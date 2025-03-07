const express = require('express');
const multer = require('multer');
const sharp = require('sharp');
const fs = require('fs');
const path = require('path');
const axios = require('axios');

const app = express();
app.use(express.json());
const upload = multer({ dest: 'llimao_uploads/' });

const IP_ADDRESS = process.env.IP_ADDRESS || '191.96.81.87';
const PORT = process.env.PORT || 3000;
const outputDir = path.join(__dirname, 'llimao_uploads');

app.use('/llimao_uploads', express.static(outputDir));

const downloadAndConvertImageToJpg = async (url, outputDir) => {
    const outputPath = path.join(outputDir, Date.now() + '.jpg');
    const response = await axios({ url, method: 'GET', responseType: 'arraybuffer' });
    await sharp(response.data).jpeg({ quality: 80 }).toFile(outputPath);
    return outputPath;
};

const deleteFilesExceptImagesAndAudio = (dirPath) => {
    fs.readdir(dirPath, (err, files) => {
        if (err) return;
        files.forEach((file) => {
            const filePath = path.join(dirPath, file);
            const ext = path.extname(file).toLowerCase();
            if (ext !== '.jpg' && ext !== '.mp3') {
                fs.unlink(filePath, (err) => {});
            }
        });
    });
};

const compressImage = async (inputPath, outputPath) => {
    await sharp(inputPath).resize(800).jpeg({ quality: 50 }).toFile(outputPath);
};

const saveAudio = async (inputPath, outputPath) => {
    return new Promise((resolve, reject) => {
        fs.copyFile(inputPath, outputPath, (err) => {
            if (err) reject(err);
            else resolve();
        });
    });
};

const closeAndUnlinkFile = (filePath) => {
    fs.unlink(filePath, (err) => {});
};

const detectFileType = (mimeType) => {
    if (mimeType.startsWith('image/')) return 'image';
    else if (mimeType.startsWith('video/') || mimeType === 'unknown') return 'video';
    else if (mimeType.startsWith('audio/')) return 'audio';
    else return 'unknown';
};

app.post('/upload', upload.single('file'), async (req, res) => {
    const file = req.file;
    if (!file) return res.status(400).json({ error: 'Nenhum arquivo enviado' });

    const ext = path.extname(file.originalname).toLowerCase();
    const outputPath = path.join(outputDir, Date.now() + ext);
    const fileType = detectFileType(file.mimetype);

    try {
        if (fileType === 'image') await compressImage(file.path, outputPath);
        else if (fileType === 'audio') await saveAudio(file.path, outputPath);
        else if (fileType === 'unknown') fs.renameSync(file.path, outputPath);
        else return res.status(400).json({ error: 'Formato de arquivo não suportado.' });

        closeAndUnlinkFile(file.path);
        const fileUrl = `http://${IP_ADDRESS}:${PORT}/llimao_uploads/${path.basename(outputPath)}`;
        return res.status(200).json({ url: fileUrl, type: fileType });
    } catch (error) {
        return res.status(500).json({ error: 'Erro ao processar o arquivo.' });
    }
});

app.post('/upload-from-url', async (req, res) => {
    const { imageUrl } = req.body;
    if (!imageUrl || !imageUrl.match(/(http)?s?:?(\/\/[^"']*\.(?:png|jpg|jpeg|gif|png|svg|webp))/)) {
        return res.status(400).json({ error: 'Link inválido ou nenhum link fornecido.' });
    }

    try {
        const savedImagePath = await downloadAndConvertImageToJpg(imageUrl, outputDir);
        const fileUrl = `http://${IP_ADDRESS}:${PORT}/llimao_uploads/${path.basename(savedImagePath)}`;
        return res.status(200).json({ url: fileUrl, type: 'image' });
    } catch (error) {
        return res.status(500).json({ error: 'Erro ao processar o link da imagem.' });
    }
});

const server = app.listen(PORT, IP_ADDRESS, () => {
    console.log(`Servidor rodando em http://${IP_ADDRESS}:${PORT}`);
    deleteFilesExceptImagesAndAudio(outputDir);
});

setTimeout(() => {
    server.close(() => {
        process.exit(0);
    });
}, 86400000);
