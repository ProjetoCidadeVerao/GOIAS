 // lLimao MDT fix
 // DC: llimao
 var currentMenu = 'currentMenu';
 var currentPage = 'currentPage';
 var lastPage = [];
 var menuOpen = false;
 var profilePadrao = 'images/profile.png';
 var nome = 'Indivíduo';
 var sobrenome = 'Indigente';
 var patente = 'Sem Patente';
 var servico = 'offline';
 var passaporte = null;
 const servicoNomes = {
     offline: 'Offline',
     foraservico: 'Fora de Serviço',
     emservico: 'Em Serviço'
 };
 var antiSpam = false;
 var map;
 var map2;
 var personIcon = L.icon({
     iconUrl: 'images/icons/radar_vip.png',
     iconSize: [
         15,
         15
     ]
 });
 var carIcon = L.icon({
     iconUrl: 'images/icons/radar_cop_patrol.png',
     iconSize: [
         15,
         15
     ]
 });
 var heliIcon = L.icon({
     iconUrl: 'images/icons/radar_police_heli.png',
     iconSize: [
         15,
         15
     ]
 });
 var motoIcon = L.icon({
     iconUrl: 'images/icons/radar_gang_bike.png',
     iconSize: [
         15,
         15
     ]
 });
 var boatIcon = L.icon({
     iconUrl: 'images/icons/radar_player_boat.png',
     iconSize: [
         15,
         15
     ]
 });
 var planeIcon = L.icon({
     iconUrl: 'images/icons/radar_plane_drop.png',
     iconSize: [
         15,
         15
     ]
 });
 var tilesColors = {
     Realmap: '#082732',
     Satellite: '#00367C',
     Atlas: '#06A9D3'
 };
 var chartLabels;
 var chartData;
 var passaportePrender;
 var descricaoPrender;
 var tempoPrender;
 var multaPrender;
 var fiancaPrender;
 var isFiancavel = true;
 var atenuantesPrender;
 var agravantesPrender;
 var crimesLista = [];
 var atenuantesLista = [];
 var agravantesLista = [];
 var boletimFotoUrl = 'images/profile.png';
 let crimesEditar = [];
 let atenuantesEditar = [];
 let agravantesEditar = [];
 let crimesRemover = [];
 let atenuantesRemover = [];
 let agravantesRemover = [];
 const actionContainer = $('.actioncontainer');
 const mascaraSection = $('.mascara');
 const photoWrap = $('.photo-wrap');
 const mainContainer = $('.main');
 var logo = '';
 var penaMaxima = Infinity;
 var tipoDeMapa = 'Mainmap';
 var codigoPenal = [];
 var atenuantesPenal = [];
 var agravantesPenal = [];
 var urlImagemCarros = 'http://000.000.000.000/vehicles/';
 var qualidadeDoUpload = 1;
 $(function () {
     window.addEventListener('message', function (h) {
         let t = h.data;
         switch (t.action) {
         case 'showMenu':
             actionContainer.fadeIn(1000);
             mascaraSection.fadeIn(1000);
             actionContainer.css('display', 'flex');
             menuOpen = true;
             if (currentMenu === 'currentMenu') {
                 carregarMenu('login');
             } else {
                 if (currentMenu === 'dashboard') {
                     $.post('https://cc_mdt/updateMapa', JSON.stringify({}), u => {
                         for (j of u.oficiaisMapa) {
                             var w = eval(j.tipo);
                             if (!marker1[j.source]) {
                                 marker1[j.source] = L.marker(convertToMap(j.cdsx, j.cdsy), { icon: w }).addTo(map).bindPopup(j.tag);
                             }
                             if (map2) {
                                 if (!marker2[j.source]) {
                                     marker2[j.source] = L.marker(convertToMap(j.cdsx, j.cdsy), { icon: w }).addTo(map2).bindPopup(j.tag);
                                 }
                                 marker2[j.source].setLatLng(convertToMap(j.cdsx, j.cdsy)).setIcon(w).update();
                             }
                             marker1[j.source].setLatLng(convertToMap(j.cdsx, j.cdsy)).setIcon(w).update();
                         }
                     });
                     updateLoopMap();
                 }
             }
             break;
         case 'syncPhoto':
             if (currentMenu === 'dashboard' || currentMenu === 'manager') {
                 $('.img-profile[data-userid=' + t.user_id + ']').attr('src', t.image);
             }
             break;
         case 'syncMessage':
             if (currentMenu === 'dashboard') {
                 let aa = '<div class="message">\n                  <div class="msg-profile">\n                     <img\n                        src="' + t.fotoUrl + '">\n                     <div id="' + t.status + '" class="circle-stats"></div>\n                  </div>\n                  <div class="msg-text">\n                     <span class="msg-author">' + t.nome + '</span>\n                     <span class="msg-data">' + t.mensagem + '</span>\n                  </div>\n               </div>';
                 $('.chat').append(aa);
             }
             break;
         case 'hideMenu':
             closeUi();
             break;
         case 'updateDashboard':
             carregarMenu('dashboard');
             break;
         case 'updateDados':
             carregarMenu('dados');
             break;
         case 'updateLogin':
             carregarMenu('login');
             break;
         case 'updateManager':
             checkAdmin();
             break;
         case 'updateBoletim':
             carregarMenu('boletim');
             break;
         case 'updateRegistros':
             carregarMenu('registros');
             break;
         }
     });
     $.post('https://cc_mdt/initialConfig', JSON.stringify({}), ab => {
        console.log(ab)
         logo = ab.configJS.logo;
         penaMaxima = ab.configJS.penaMaxima;
         tipoDeMapa = ab.configJS.tipoDeMapa;
         codigoPenal = JSON.parse(ab.configJS.codigoPenal);
         atenuantesPenal = JSON.parse(ab.configJS.atenuantesPenal);
         agravantesPenal = JSON.parse(ab.configJS.agravantesPenal);
         urlImagemCarros = ab.configJS.urlImagemCarros;
         qualidadeDoUpload = ab.configJS.qualidadeDoUpload;
     });
     document.onkeyup = function (ac) {
         if (ac.which == 27) {
             closeUi();
         }
     };
 });
 const closeUi = () => {
     actionContainer.addClass('leave');
     mascaraSection.fadeOut(1000);
     $.post('https://cc_mdt/closeUi', JSON.stringify({}), function (ad) {
     });
     menuOpen = false;
     setTimeout(() => {
         actionContainer.css('display', 'none');
         actionContainer.removeClass('leave');
     }, 1000);
 };
 const startLoading = () => {
     $('.content').append('<div id="preloader"></div>');
     lastMenu = currentMenu;
     currentMenu = 'loading';
 };
 const stopLoading = () => {
     $('#preloader').remove();
     currentMenu = lastMenu;
 };
 const updateLoopMap = () => {
     setTimeout(function () {
         $.post('https://cc_mdt/updateMapa', JSON.stringify({}), ae => {
             for (j of ae.oficiaisMapa) {
                 var af = eval(j.tipo);
                 if (!marker1[j.source]) {
                     marker1[j.source] = L.marker(convertToMap(j.cdsx, j.cdsy), { icon: af }).addTo(map).bindPopup(j.tag);
                 }
                 if (map2) {
                     if (!marker2[j.source]) {
                         marker2[j.source] = L.marker(convertToMap(j.cdsx, j.cdsy), { icon: af }).addTo(map2).bindPopup(j.tag);
                     }
                     marker2[j.source].setLatLng(convertToMap(j.cdsx, j.cdsy)).setIcon(af).update();
                 }
                 marker1[j.source].setLatLng(convertToMap(j.cdsx, j.cdsy)).setIcon(af).update();
             }
             if (currentMenu === 'dashboard' && menuOpen) {
                 updateLoopMap();
             }
         });
     }, 1000);
 };
 const carregarMenu = ag => {
     if (currentMenu != ag && currentMenu != 'loading') {
         currentMenu = ag;
         order = false;
         $('.content .cnt, .content .cnt-info, .content .cnt-buttons').addClass('animate__fadeOutRight');
         setTimeout(() => {
             var ah = 'update' + ag.charAt(0).toUpperCase() + ag.slice(1);
             eval(ah + '();');
         }, 400);
     }
 };
 const avancarPagina = ai => {
     if (currentPage != ai) {
         lastPage.push($('.content .cnt:not(#paginas-display), .content .cnt-buttons').clone());
         $('.content .cnt:not(#paginas-display), .content .cnt-buttons').addClass('animate__fadeOutRight');
         $('#paginas-display #' + currentPage + '').removeClass('active').addClass('done');
         $('#paginas-display #' + ai + '').addClass('active');
         currentPage = ai;
         setTimeout(() => {
             $('.content .cnt:not(#paginas-display), .content .cnt-buttons').remove();
             var aj = 'avancar' + ai.charAt(0).toUpperCase() + ai.slice(1);
             eval(aj + '();');
         }, 400);
     }
 };
 const voltarPagina = ak => {
     if (currentPage != ak) {
         $('.content .cnt:not(#paginas-display), .content .cnt-buttons').addClass('animate__fadeOutRight');
         $('#paginas-display #' + currentPage + '').removeClass('active');
         $('#paginas-display #' + ak + '').removeClass('done').addClass('active');
         currentPage = ak;
         setTimeout(() => {
             $('.content .cnt:not(#paginas-display), .content .cnt-buttons').remove();
             $('.content').append(lastPage[lastPage.length - 1]);
             lastPage.splice(lastPage.length - 1, 1);
         }, 400);
     }
 };
 const changeForm = () => {
     $('.right-cnt').toggleClass('is-hidden');
     $('.right-cnt-2').toggleClass('is-hidden');
     $('#a-container').toggleClass('is-txl');
     $('#b-container').toggleClass('is-out-left');
     $('#c-container').toggleClass('is-out-right');
 };
 var cropperFotoPerfil;
 const tirarFoto = () => {
     $.post('https://cc_mdt/checkNotInVehicle', JSON.stringify({}), al => {
         if (al == 'ok') {
             actionContainer.addClass('leave');
             mascaraSection.fadeOut(1000);
             photoWrap.fadeIn();
             $('#scroll').css('display', 'none');
             setTimeout(() => {
                 actionContainer.css('display', 'none');
                 actionContainer.removeClass('leave');
             }, 1000);
             $.post('https://cc_mdt/takeInsPro', JSON.stringify({ frontCam: true }), am => {
                 photoWrap.fadeOut(200);
                 setTimeout(() => {
                     $('#scroll').css('display', 'block');
                 }, 200);
                 if (JSON.parse(am).url != undefined) {
                     let an = JSON.parse(am).url;
                     let ap = '\n                <div class="expand-background" style="display:none;">\n                      <div class="expand">\n                         <h3>Alterar Foto</h3>\n                         <div class="separador"></div>\n                         <div class="img">\n                            <img id="image-crop" src="' + an + '">\n                            <section>\n                                  <span></span>        \n                                  <span></span>        \n                                  <span></span>        \n                                  <span></span>        \n                                  <span></span>        \n                                  <span></span>        \n                            </section>\n                         </div>\n                         <div class="expand-buttons">\n                            <button onclick="contractContainer()" class="restaurar">Cancelar</button>\n                            <button onclick="definirNovaFoto()" class="avancar">Confirmar</button>\n                         </div>\n                      </div>\n                </div>';
                     $('.main').append(ap);
                     var aq = document.querySelector('#image-crop');
                     cropperFotoPerfil = new Cropper(aq, {
                         aspectRatio: 1,
                         viewMode: 1,
                         autoCrop: true,
                         dragMode: 'crop',
                         zoomable: false,
                         ready: function () {
                             $('section').remove();
                         }
                     });
                 }
                 actionContainer.fadeIn(1000);
                 mascaraSection.fadeIn(1000);
                 actionContainer.css('display', 'flex');
                 $('.expand-background').fadeIn();
             });
         } else {
             errorNotify('Você não pode realizar essa ação em um veículo!');
         }
     });
 };
 const definirNovaFoto = () => {
    cropperFotoPerfil.getCroppedCanvas().toBlob(at => {
        const formData = new FormData();
        formData.append('source', at, 'beirario' + passaporte);
        formData.append('type', 'file');
        formData.append('action', 'upload');
        formData.append('timestamp', Date.now());
        formData.append('auth_token', '4240c998caabd818d3985f4a71cd5019795c8a56');

        fetch('https://imgbb.com/json', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro na solicitação: ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            const profilePadrao = data.image.url; // Corrigido aqui
            $.post('https://cc_mdt/updateProfileImage', JSON.stringify({
                image: profilePadrao,
                user: passaporte
            }), aw => {
                console.log('sapoha')
                if (aw === 'ok') {
                    contractContainer();
                    sucessNotify('Nova foto definida com sucesso!');
                    $('#sidebar .user-pic img').attr('src', profilePadrao);
                } else {
                    errorNotify('Ops, algo deu errado salvando a imagem!');
                }
            });
        })
        .catch(error => {
            console.error('Erro ao fazer a solicitação:', error);
            errorNotify('Ops, algo deu errado com o upload!');
        });
    }, 'image/jpeg', qualidadeDoUpload);
};

 const criarConta = () => {
     if (!$('#r-login').val()) {
         $('#r-login').css('border', '.12vw solid #ED4245');
         errorNotify('Insira o seu passaporte!');
         return;
     }
     if (!$('#r-senha').val()) {
         $('#r-senha').css('border', '.12vw solid #ED4245');
         errorNotify('Insira a senha!');
         return;
     }
     if (!$('#r-repetir-senha').val()) {
         $('#r-repetir-senha').css('border', '.12vw solid #ED4245');
         errorNotify('Repita a sua senha!');
         return;
     }
     if ($('#r-senha').val() !== $('#r-repetir-senha').val()) {
         $('.r-senha').css('border', '.12vw solid #ED4245');
         $('.r-repetir-senha').css('border', '.12vw solid #ED4245');
         errorNotify('As senhas não coincidem!');
         return;
     }
     if ($('#r-login').val() != passaporte) {
         errorNotify('Esse não é seu passaporte!');
         return;
     }
     $.post('https://cc_mdt/createAcc', JSON.stringify({
         user: $('#r-login').val(),
         senha: $('#r-senha').val()
     }), ax => {
         if (ax === 'ok') {
             sucessNotify('Conta criada com sucesso!');
             changeForm();
             $('#r-login').val('');
             $('#r-senha').val('');
             $('#r-repetir-senha').val('');
         } else {
             errorNotify('Você já possui uma conta!');
         }
     });
 };
 const loginConta = () => {
     if (!$('#login').val()) {
         $('#login').css('border', '.12vw solid #ED4245');
         errorNotify('Insira o seu passaporte!');
         return;
     }
     if (!$('#senha').val()) {
         $('#senha').css('border', '.12vw solid #ED4245');
         errorNotify('Insira a senha!');
         return;
     }
     $.post('https://cc_mdt/tryLogin', JSON.stringify({
         user: $('#login').val(),
         senha: $('#senha').val()
     }), ay => {
         if (ay === 'ok') {
             carregarMenu('dashboard');
         } else {
             errorNotify('Senha ou passaporte incorretos!');
         }
     });
 };
 const sucessNotify = az => {
     var ba = '<div class=\'animate__animated notification\' id=\'sucess\'><svg xmlns=\'https://www.w3.org/2000/svg\' width=\'512\' height=\'512\' viewBox=\'0 0 512 512\'><title>ionicons-v5-e</title><polyline points=\'416 128 192 384 96 288\' style=\'fill:none;stroke:#3BA55D;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px\'/></svg><span>' + az + '</span></div>';
     $(ba).show().addClass('animate__fadeInDown').appendTo('.main').delay(7000).queue(function (bb) {
         $(this).removeClass('animate__fadeInDown').addClass('animate__fadeOutDown').delay(1000);
         bb();
     }).delay(500).queue(function (bc) {
         $(this).fadeOut(3000).hide().remove();
     });
 };
 const errorNotify = bd => {
     var be = '<div class=\'animate__animated notification\' id=\'error\'><svg xmlns=\'https://www.w3.org/2000/svg\' width=\'512\' height=\'512\' viewBox=\'0 0 512 512\'><title>ionicons-v5-l</title><line x1=\'368\' y1=\'368\' x2=\'144\' y2=\'144\' style=\'fill:none;stroke:#ED4245;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px\'/><line x1=\'368\' y1=\'144\' x2=\'144\' y2=\'368\' style=\'fill:none;stroke:#ED4245;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px\'/></svg><span>' + bd + '</span></div>';
     $(be).show().addClass('animate__fadeInDown').appendTo('.main').delay(7000).queue(function (bf) {
         $(this).removeClass('animate__fadeInDown').addClass('animate__fadeOutDown').delay(1000);
         bf();
     }).delay(500).queue(function (bg) {
         $(this).fadeOut(3000).hide().remove();
     });
 };
 const closeAlert = bh => {
     var bi = $('.alert-background');
     if (!bi.is(bh.target) && bi.has(bh.target).length === 0 && !$('.alert').is(':hover')) {
         $('.alert-background').fadeOut();
         setTimeout(function () {
             $('.alert-background').remove();
         }, 500);
     }
 };
 const closeExpand = bj => {
     var bk = $('.expand-background');
     if (!bk.is(bj.target) && bk.has(bj.target).length === 0 && !$('.expand').is(':hover')) {
         $('.expand-background').fadeOut();
         setTimeout(function () {
             $('.expand-background').remove();
         }, 500);
     }
 };
 const updateLoading = () => {
     $('.main').html('\n        <div class="loading">\n                <section>\n                        <span></span>        \n                        <span></span>        \n                        <span></span>        \n                        <span></span>        \n                        <span></span>        \n                        <span></span>        \n                </section>\n        </div>\n        ');
 };
 const alertContainer = () => {
     let bl = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 id="registrar" class="signup">Esqueceu a senha?</h3>\n                        <p id="registrar" class="signup">Insira a nova senha para o passaporte <b>' + passaporte + '</b>!</p>\n                        <input type="password" id="senha-para-resetar" placeholder="Senha"></input>\n                        <input type="password" id="repetir-senha-para-resetar" placeholder="Repetir senha"></input>\n                        <button id="reset-senha" class="button">\n                                <span class="handle">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                        <svg class="icon" viewBox="0 0 20 20">\n                                                <polyline points="9 13 12 10 8 6"></polyline>\n                                        </svg>\n                                </span>\n                                <span class="default">Alterar Senha</span>\n                                <span class="progress">Confirmar</span>\n                                <span class="success">Pronto</span>\n                                <span class="drop">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                </span>\n                        </button>\n                </div>\n        </div>';
     $('.main').append(bl);
     $('.alert-background').fadeIn();
     updateDrag();
 };
 const updateDrag = () => {
     let bm = document.querySelector('.handle');
     let bn = document.querySelector('.background path');
     let bo = document.querySelector('.drop');
     let bp = document.querySelector('.background path');
     let bq = gsap.to(bn, {
         paused: true,
         morphSVG: 'M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 34 9.92487 36 16C36 16 37 18.4379 37 20C37 21.5621 36 24 36 24C34 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z'
     });
     let br = gsap.to(bp, {
         paused: true,
         morphSVG: 'M4 16C6 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 6 30.0751 4 24C4 24 3 21.5621 3 20C3 18.4379 4 16 4 16Z'
     });
     gsap.set(bm, { x: 0 });
     $('.handle').draggable({
         cancel: false,
         axis: 'x',
         revert: 'invalid',
         containment: 'parent'
     });
     let bs = document.querySelector('#reset-senha');
     $('.drop').droppable({
         hoverClass: 'hoverControl',
         drop: function (bt, bu) {
             gsap.to(bs, {
                 '--background-opacity': 0,
                 '--progress-opacity': 0,
                 '--handle-blur': 0,
                 '--icon-y': 0.5,
                 duration: 0.3,
                 delay: 0.2
             });
             gsap.to(bs, {
                 '--icon-rotate': 87,
                 '--icon-offset': 15.5,
                 '--icon-scale': 1.5,
                 duration: 0.25,
                 delay: 0.3
             });
             gsap.to(bs, {
                 '--success-opacity': 1,
                 '--success-scale': 1,
                 '--success-x': 8,
                 duration: 0.2,
                 delay: 0.8
             });
             $.post('https://cc_mdt/trocarSenha', JSON.stringify({
                 user: passaporte,
                 senha: $('#senha-para-resetar').val()
             }), bv => {
                 if (bv === 'ok') {
                     sucessNotify('Senha alterada com sucesso!');
                     setTimeout(function () {
                         $('.alert-background').fadeOut();
                         setTimeout(function () {
                             $('.alert-background').remove();
                         }, 500);
                     }, 1500);
                 } else {
                     errorNotify('Você não possui uma conta!');
                 }
             });
         }
     });
     bs.addEventListener('click', bw => {
         if (!$('#senha-para-resetar').val()) {
             $('#senha-para-resetar').css('border', '.12vw solid #ED4245');
             errorNotify('Insira uma senha!');
             return;
         }
         if (!$('#repetir-senha-para-resetar').val()) {
             $('#repetir-senha-para-resetar').css('border', '.12vw solid #ED4245');
             errorNotify('Repita sua senha!');
             return;
         }
         if ($('#senha-para-resetar').val() !== $('#repetir-senha-para-resetar').val()) {
             $('.alert input').css('border', '.12vw solid #ED4245');
             errorNotify('As senhas não coincidem!');
             return;
         }
         if (bs.classList.contains('active')) {
             return;
         }
         bs.classList.add('active');
         gsap.to(bs, {
             '--handle-drop-opacity': 1,
             '--default-opacity': 0,
             '--default-scale': 0.8,
             duration: 0.2
         });
         gsap.to(bs, {
             '--progress-opacity': 0.5,
             '--progress-scale': 1,
             duration: 0.2,
             delay: 0.15
         });
     });
 };
 const convertToMap = (bx, by) => {
     const bz = map.unproject([
         0,
         0
     ], 0);
     const ca = map.unproject([
         -256,
         256
     ], 0);
     let cb = -(328 - 328 * ((by + 3834) / 11525)) - 20;
     let ce = 329 * ((bx + 3554) / 11520) + 16;
     return [
         cb,
         ce
     ];
 };
 const updateDashboard = () => {
     startLoading();
     $.post('https://cc_mdt/requestDashboard', JSON.stringify({}), cf => {
         stopLoading();
         chartLabels = cf.dashboard.chart.label;
         chartData = cf.dashboard.chart.data;
         marker1 = {};
         let cg = '<nav id="sidebar" class="sidebar-wrapper">\n                <div class="sidebar-header">\n                   <div class="user-pic">\n                      <img\n                         src="' + profilePadrao + '">\n                      <div class="user-pic-hover">\n                         <svg onclick="tirarFoto()" xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-e</title><circle cx="256" cy="272" r="64"/><path d="M432,144H373c-3,0-6.72-1.94-9.62-5L337.44,98.06a15.52,15.52,0,0,0-1.37-1.85C327.11,85.76,315,80,302,80H210c-13,0-25.11,5.76-34.07,16.21a15.52,15.52,0,0,0-1.37,1.85l-25.94,41c-2.22,2.42-5.34,5-8.62,5v-8a16,16,0,0,0-16-16H100a16,16,0,0,0-16,16v8H80a48.05,48.05,0,0,0-48,48V384a48.05,48.05,0,0,0,48,48H432a48.05,48.05,0,0,0,48-48V192A48.05,48.05,0,0,0,432,144ZM256,368a96,96,0,1,1,96-96A96.11,96.11,0,0,1,256,368Z"/></svg>\n                      </div>\n                   </div>\n                   <div class="user-info">\n                      <span class="user-name">' + nome + '\n                         <strong>' + sobrenome + '</strong>\n                      </span>\n                      <span class="user-role">' + patente + '</span>\n                      <span class="user-status">\n                         <div class="ball" id="' + servico + '"></div>\n                         <span>' + servicoNomes[servico] + '</span>\n                      </span>\n                   </div>\n                </div>\n                <div class="sidebar-menu">\n                   <div class="menu-header">Geral</div>\n                   <a href="#" id="dashboard" onclick="carregarMenu(\'dashboard\');" class="active">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-i</title><path d="M204,240H68a36,36,0,0,1-36-36V68A36,36,0,0,1,68,32H204a36,36,0,0,1,36,36V204A36,36,0,0,1,204,240Z"/><path d="M444,240H308a36,36,0,0,1-36-36V68a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V204A36,36,0,0,1,444,240Z"/><path d="M204,480H68a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H204a36,36,0,0,1,36,36V444A36,36,0,0,1,204,480Z"/><path d="M444,480H308a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V444A36,36,0,0,1,444,480Z"/></svg>\n                      <span>Dashboard</span>\n                   </a>\n                   <a href="#" id="dados" onclick="carregarMenu(\'dados\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                      <span>Dados</span>\n                   </a>\n                   <a href="#" id="boletim" onclick="carregarMenu(\'boletim\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-k</title><path d="M428,224H288a48,48,0,0,1-48-48V36a4,4,0,0,0-4-4H144A64,64,0,0,0,80,96V416a64,64,0,0,0,64,64H368a64,64,0,0,0,64-64V228A4,4,0,0,0,428,224ZM336,384H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Zm0-80H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Z"/><path d="M419.22,188.59,275.41,44.78A2,2,0,0,0,272,46.19V176a16,16,0,0,0,16,16H417.81A2,2,0,0,0,419.22,188.59Z"/></svg>\n                      <span>Boletim de Ocorrência</span>\n                   </a>\n                   <a href="#" id="registros" onclick="carregarMenu(\'registros\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-n</title><path d="M496,152a56,56,0,0,0-56-56H220.11a23.89,23.89,0,0,1-13.31-4L179,73.41A55.77,55.77,0,0,0,147.89,64H72a56,56,0,0,0-56,56v48a8,8,0,0,0,8,8H488a8,8,0,0,0,8-8Z"/><path d="M16,392a56,56,0,0,0,56,56H440a56,56,0,0,0,56-56V216a8,8,0,0,0-8-8H24a8,8,0,0,0-8,8Z"/></svg>\n                      <span>Registros</span>\n                   </a>\n                   \n\n                   </a>\n                </div>\n             </nav>\n             <!-- Conteudo -->\n             <div class="content">\n                <div class="cnt-info">\n                   <div>\n                      <h3 class="cnt-header">Dashboard</h3>\n                      <div class="cnt-desc">Você poderá visualizar de forma geral nossos sistemas;</div>\n                   </div>\n                   <div class="logo">\n                      <img\n                         src="' + logo + '">\n                   </div>\n                </div>\n                <div class="cnt doisb">\n                   <div class="mapa">\n                      <h3>Oficiais em Serviço</h3>\n                      <svg id="expand" onClick="expandContainer(this)" xmlns="https://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#FFFFFF"><path d="M0 0h24v24H0z" fill="none"/><path d="M7 14H5v5h5v-2H7v-3zm-2-4h2V7h3V5H5v5zm12 7h-3v2h5v-5h-2v3zM14 5v2h3v3h2V5h-5z"/></svg>\n                      <div class="separador"></div>\n                      <div id="mapCanvas" class="mapa-img"></div>                       \n                   </div>\n \n                   <div class="comunicados">\n                      <h3>Comunicados</h3>\n                      <svg id="expand" onClick="expandContainer(this)" xmlns="https://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#FFFFFF"><path d="M0 0h24v24H0z" fill="none"/><path d="M7 14H5v5h5v-2H7v-3zm-2-4h2V7h3V5H5v5zm12 7h-3v2h5v-5h-2v3zM14 5v2h3v3h2V5h-5z"/></svg>\n                      <div class="separador"></div>\n                      <div class="chat overflow">' + cf.dashboard.comunicados.map(ch => '\n                        <div class="message" data-userid="' + ch.user_id + '" data-token="' + ch.token + '">\n                           <div class="msg-profile">\n                              <img class="img-profile" data-userid="' + ch.user_id + '"\n                                 src="' + ch.fotoUrl + '">\n                              <div class="circle-stats" id="' + ch.status + '"></div>\n                           </div>\n                           <div class="msg-text">\n                              <span class="msg-author">' + ch.nome + '</span>\n                              <span class="msg-data">' + ch.mensagem + '</span>\n                           </div>\n                        </div>\n                        ').join('') + '</div>\n                      <div style="position: relative; margin-top: 0.4vw;">\n                         <input id="send-input" placeholder="Envie seu comunidado;"></input>\n                         <svg onclick=\'sendComunicado()\' class="search-icon" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>ionicons-v5-q</title><path d="M476.59,227.05l-.16-.07L49.35,49.84A23.56,23.56,0,0,0,27.14,52,24.65,24.65,0,0,0,16,72.59V185.88a24,24,0,0,0,19.52,23.57l232.93,43.07a4,4,0,0,1,0,7.86L35.53,303.45A24,24,0,0,0,16,327V440.31A23.57,23.57,0,0,0,26.59,460a23.94,23.94,0,0,0,13.22,4,24.55,24.55,0,0,0,9.52-1.93L476.4,285.94l.19-.09a32,32,0,0,0,0-58.8Z"/></svg>\n                      </div> \n                  </div>\n                </div>\n                <div class="cnt" style="flex: 0;">\n                   <div class="estatisticas">\n                      <h3>Estatísticas</h3>\n                      <div class="separador"></div>\n                      <svg id="expand" onClick="expandContainer(this)" xmlns="https://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#FFFFFF"><path d="M0 0h24v24H0z" fill="none"/><path d="M7 14H5v5h5v-2H7v-3zm-2-4h2V7h3V5H5v5zm12 7h-3v2h5v-5h-2v3zM14 5v2h3v3h2V5h-5z"/></svg>\n                      <canvas id="myChart" width="400" height="80"></canvas>\n                   </div>\n                </div>\n                </div>';
         $('.main').html(cg);
         $('.chat').animate({ scrollTop: $('.chat')[0].scrollHeight }, 1000);
         map = L.map('mapCanvas', {
             minZoom: 0,
             maxZoom: 3,
             attributionControl: false,
             crs: L.CRS.Simple
         }).setView([
             -260,
             112.75
         ], 0);
         $('#mapCanvas').css('background-color', tilesColors[tipoDeMapa]);
         var ci = L.tileLayer('https://lh6.googleusercontent.com/_RLcC7j8fU2AojdMBF5c0R4UWw3FpyTklKHj9V73iIBDVc0P9rs-Kymntf05mCG6Gpq5LpWAWyUIuy3VUy9vfY2j5aymsgWnI7YP3n9sttKbCwvyhwbie4nOiNVDKo7_Rz84ny4Q', {
             noWrap: !0,
             tileSize: 256,
             edgeBufferTiles: 2
         }).addTo(map);
         $.post('https://cc_mdt/updateMapa', JSON.stringify({}), cj => {
             for (j of cj.oficiaisMapa) {
                 var ck = eval(j.tipo);
                 if (!marker1[j.source]) {
                     marker1[j.source] = L.marker(convertToMap(j.cdsx, j.cdsy), { icon: ck }).addTo(map).bindPopup(j.tag);
                 }
                 if (map2) {
                     if (!marker2[j.source]) {
                         marker2[j.source] = L.marker(convertToMap(j.cdsx, j.cdsy), { icon: ck }).addTo(map2).bindPopup(j.tag);
                     }
                     marker2[j.source].setLatLng(convertToMap(j.cdsx, j.cdsy)).setIcon(ck).update();
                 }
                 marker1[j.source].setLatLng(convertToMap(j.cdsx, j.cdsy)).setIcon(ck).update();
             }
         });
         updateLoopMap();
         const cl = document.getElementById('myChart').getContext('2d');
         const cn = new Chart(cl, {
             type: 'line',
             data: {
                 labels: cf.dashboard.chart.label,
                 datasets: [{
                         label: 'Boletins',
                         data: cf.dashboard.chart.data,
                         fill: true,
                         borderColor: '#5865F2',
                         backgroundColor: 'rgba(88, 101, 242, .2)',
                         tension: 0.1
                     }]
             },
             options: {
                 maintainAspectRatio: true,
                 plugins: {
                     tooltip: {
                         backgroundColor: 'rgba(32, 34, 37, 1)',
                         displayColors: false
                     },
                     legend: { display: false }
                 },
                 scales: {
                     y: {
                         ticks: { precision: 0 },
                         beginAtZero: true
                     }
                 }
             }
         });
     });
 };
 const sendComunicado = () => {
     var co;
     if ($('.expand .chat').length === 1) {
         co = $('.expand #send-input').val();
     } else {
         co = $('#send-input').val();
     }
     if (!co || /^\s*$/.test(co)) {
         return;
     }
     $.post('https://cc_mdt/saveComunicado', JSON.stringify({
         passaporte: passaporte,
         mensagem: co
     }), cp => {
         if (cp === 'ok') {
             if ($('.expand .chat').length === 1) {
                 $('.expand #send-input').val('');
                 $('.expand .chat').animate({ scrollTop: $('.expand .chat')[0].scrollHeight }, 1000);
             } else {
                 $('#send-input').val('');
                 $('.chat').animate({ scrollTop: $('.chat')[0].scrollHeight }, 1000);
             }
         } else {
             errorNotify('Ops, algo deu errado!');
         }
     });
 };
 const expandContainer = cq => {
     let cr = $(cq).parent().html();
     let cs = '\n        <div class="expand-background" style="display:none;">\n            <div class="expand">\n                ' + cr + '\n            </div>\n        </div>';
     $('.main').append(cs);
     if ($('.main .expand #mapCanvas').length === 1) {
         $('.main .expand #mapCanvas').replaceWith('<div id="mapCanvasExpand" class="mapa-img">');
         map2 = L.map('mapCanvasExpand', {
             minZoom: 0,
             maxZoom: 3,
             attributionControl: false,
             crs: L.CRS.Simple
         }).setView([
             -260,
             112.75
         ], 2);
         $('#mapCanvasExpand').css('background-color', tilesColors[tipoDeMapa]);
         var ct = L.tileLayer('https://lh6.googleusercontent.com/_RLcC7j8fU2AojdMBF5c0R4UWw3FpyTklKHj9V73iIBDVc0P9rs-Kymntf05mCG6Gpq5LpWAWyUIuy3VUy9vfY2j5aymsgWnI7YP3n9sttKbCwvyhwbie4nOiNVDKo7_Rz84ny4Q', {
             noWrap: !0,
             tileSize: 256,
             edgeBufferTiles: 2
         }).addTo(map2);
         marker2 = {};
     } else {
         if ($('.main .expand #myChart').length === 1) {
             $('.main .expand #myChart').replaceWith('<canvas id="myChartExpanded" width="400" height="150"></canvas>');
             const cu = document.getElementById('myChartExpanded').getContext('2d');
             const cv = new Chart(cu, {
                 type: 'line',
                 data: {
                     labels: chartLabels,
                     datasets: [{
                             label: 'Boletins',
                             data: chartData,
                             fill: true,
                             borderColor: '#5865F2',
                             backgroundColor: 'rgba(88, 101, 242, .2)',
                             tension: 0.1
                         }]
                 },
                 options: {
                     maintainAspectRatio: true,
                     plugins: {
                         tooltip: {
                             backgroundColor: 'rgba(32, 34, 37, 1)',
                             displayColors: false
                         },
                         legend: { display: false }
                     },
                     scales: {
                         y: {
                             ticks: { precision: 0 },
                             beginAtZero: true
                         }
                     }
                 }
             });
         }
     }
     $('.expand #expand').replaceWith('<svg xmlns="https://www.w3.org/2000/svg" id="contract" onClick="contractContainer(this)" height="24px" viewBox="0 0 24 24" width="24px" fill="#FFF"><path d="M0 0h24v24H0z" fill="none"/><path d="M5 16h3v3h2v-5H5v2zm3-8H5v2h5V5H8v3zm6 11h2v-3h3v-2h-5v5zm2-11V5h-2v5h5V8h-3z"/></svg>');
     $('.expand-background').fadeIn();
     if ($('.main .expand #mapCanvasExpand').length === 1) {
         map2.invalidateSize();
     }
 };
 const contractContainer = () => {
     $('.expand-background').fadeOut();
     setTimeout(function () {
         $('.expand-background').remove();
     }, 500);
 };
 const updateLogin = () => {
     startLoading();
     $.post('https://cc_mdt/requestLogin', JSON.stringify({}), cw => {
         stopLoading();
         nome = cw.login.profile.nome;
         sobrenome = cw.login.profile.sobrenome;
         patente = cw.login.profile.patente;
         servico = cw.login.profile.servico;
         passaporte = cw.login.profile.passaporte;
         profilePadrao = cw.login.profile.fotoUrl;
         let cz = '<div class="left is-txl" id="b-container">\n                                <div class="left-cnt">\n                                <div class="logo"><img\n                                src="' + logo + '">\n                                </div>\n                                <h3 class="welcome">Seja bem vindo!</h3>\n                                <p class="welcome">Tenha um ótimo dia, ' + nome + '!</p>\n                                <input autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" id="login" type="number"\n                                placeholder="Passaporte"></input>\n                                <input type="password" id="senha" class="no-margin" placeholder="Senha"></input>\n                                <a href=\'#\' id="esqueceu-senha" onClick="alertContainer()" class="welcome">Esqueceu a senha?</a>\n                                <button onClick="loginConta()" class="login">Entrar</button>\n                                </div>\n                        </div>\n                        <div class="right" id="a-container">\n                                <div class="right-cnt">\n                                <h3 id="registrar" class="signup">É novo por aqui?</h3>\n                                <p id="registrar" class="signup">Para se manter conectado, favor registre-se em nosso sistema!</p>\n                                <button id="registrar" onClick="changeForm()">Registrar</button>\n                                </div>\n                                <div class="right-cnt-2 is-hidden">\n                                <h3 id="registrar" class="signup">Já possuí uma conta?</h3>\n                                <p id="registrar" class="signup">Para se manter conectado, favor faça login em nosso sistema!</p>\n                                <button id="registrar" onClick="changeForm()">Login</button>\n                                </div>\n                        </div>\n                        <div class="left is-out-right" id="c-container">\n                                <div class="left-cnt">\n                                <div class="logo"><img\n                                src="' + logo + '">\n                                </div>\n                                <h3 id="criarconta">Crie sua conta!</h3>\n                                <input autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" id="r-login"\n                                type="number" placeholder="Passaporte"></input>\n                                <input type="password" id="r-senha" placeholder="Senha"></input>\n                                <input type="password" id="r-repetir-senha" placeholder="Repetir senha"></input>\n                                <button class="login" onClick="criarConta()">Registrar</button>\n                                </div>\n                        </div>';
         $('.main').html(cz);
     });
 };
 const checkAdmin = () => {
     $.post('https://cc_mdt/checarAdmin', JSON.stringify({}), db => {
         let dd = eval(db.bool);
         if (dd) {
             carregarMenu('manager');
         } else {
             errorNotify('Você não tem permissão!');
         }
     });
 };
 const updateBoletim = () => {
     currentPage = 'boletimacusado';
     passaportePrender = 0;
     descricaoPrender = '';
     boletimFotoUrl = 'images/profile.png';
     let df = '<nav id="sidebar" class="sidebar-wrapper">\n               <div class="sidebar-header">\n                  <div class="user-pic">\n                     <img\n                        src="' + profilePadrao + '">\n                     <div class="user-pic-hover">\n                        <svg onclick="tirarFoto()" xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-e</title><circle cx="256" cy="272" r="64"/><path d="M432,144H373c-3,0-6.72-1.94-9.62-5L337.44,98.06a15.52,15.52,0,0,0-1.37-1.85C327.11,85.76,315,80,302,80H210c-13,0-25.11,5.76-34.07,16.21a15.52,15.52,0,0,0-1.37,1.85l-25.94,41c-2.22,2.42-5.34,5-8.62,5v-8a16,16,0,0,0-16-16H100a16,16,0,0,0-16,16v8H80a48.05,48.05,0,0,0-48,48V384a48.05,48.05,0,0,0,48,48H432a48.05,48.05,0,0,0,48-48V192A48.05,48.05,0,0,0,432,144ZM256,368a96,96,0,1,1,96-96A96.11,96.11,0,0,1,256,368Z"/></svg>\n                     </div>\n                  </div>\n                  <div class="user-info">\n                     <span class="user-name">' + nome + '\n                        <strong>' + sobrenome + '</strong>\n                     </span>\n                     <span class="user-role">' + patente + '</span>\n                     <span class="user-status">\n                        <div class="ball" id="' + servico + '"></div>\n                        <span>' + servicoNomes[servico] + '</span>\n                     </span>\n                  </div>\n               </div>\n               <div class="sidebar-menu">\n                  <div class="menu-header">Geral</div>\n                  <a href="#" id="dashboard" onclick="carregarMenu(\'dashboard\');">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-i</title><path d="M204,240H68a36,36,0,0,1-36-36V68A36,36,0,0,1,68,32H204a36,36,0,0,1,36,36V204A36,36,0,0,1,204,240Z"/><path d="M444,240H308a36,36,0,0,1-36-36V68a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V204A36,36,0,0,1,444,240Z"/><path d="M204,480H68a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H204a36,36,0,0,1,36,36V444A36,36,0,0,1,204,480Z"/><path d="M444,480H308a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V444A36,36,0,0,1,444,480Z"/></svg>\n                     <span>Dashboard</span>\n                  </a>\n                  <a href="#" id="dados" onclick="carregarMenu(\'dados\');">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                     <span>Dados</span>\n                  </a>\n                  <a href="#" id="boletim" onclick="carregarMenu(\'boletim\');" class="active">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-k</title><path d="M428,224H288a48,48,0,0,1-48-48V36a4,4,0,0,0-4-4H144A64,64,0,0,0,80,96V416a64,64,0,0,0,64,64H368a64,64,0,0,0,64-64V228A4,4,0,0,0,428,224ZM336,384H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Zm0-80H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Z"/><path d="M419.22,188.59,275.41,44.78A2,2,0,0,0,272,46.19V176a16,16,0,0,0,16,16H417.81A2,2,0,0,0,419.22,188.59Z"/></svg>\n                     <span>Boletim de Ocorrência</span>\n                  </a>\n                  <a href="#" id="registros" onclick="carregarMenu(\'registros\');">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-n</title><path d="M496,152a56,56,0,0,0-56-56H220.11a23.89,23.89,0,0,1-13.31-4L179,73.41A55.77,55.77,0,0,0,147.89,64H72a56,56,0,0,0-56,56v48a8,8,0,0,0,8,8H488a8,8,0,0,0,8-8Z"/><path d="M16,392a56,56,0,0,0,56,56H440a56,56,0,0,0,56-56V216a8,8,0,0,0-8-8H24a8,8,0,0,0-8,8Z"/></svg>\n                     <span>Registros</span>\n                  </a>\n                 \n                  </a>\n               </div>\n            </nav>\n            <!-- Conteudo -->\n            <div class="content">\n            <div class="cnt-info">\n               <div>\n                  <h3 class="cnt-header">Boletim</h3>\n                  <div class="cnt-desc">Realize a apreensão de indivíduos;</div>\n               </div>\n               <div class="logo">\n                  <img\n                     src="' + logo + '">\n               </div>\n            </div>\n            <div id="paginas-display" class="cnt umb umh" style="flex: 0;">\n               <div class="paginas">\n                  <div id="boletimacusado" class="etapas active">\n                     <div class="numerador">1</div>\n                     <div class="titulo">Acusado</div>\n                  </div>\n                  <div id="boletimcrimes" class="linha"></div>\n                  <div id="boletimcrimes" class="etapas">\n                     <div class="numerador">2</div>\n                     <div class="titulo">Crimes</div>\n                  </div>\n                  <div id="boletimatenuantes" class="linha"></div>\n                  <div id="boletimatenuantes" class="etapas">\n                     <div class="numerador">3</div>\n                     <div class="titulo">Atenuan.</div>\n                  </div>\n                  <div id="boletimgeral" class="linha"></div>\n                  <div id="boletimgeral" class="etapas">\n                     <div class="numerador">4</div>\n                     <div class="titulo">Geral</div>\n                  </div>\n               </div>\n            </div>\n            <div class="cnt umb umh">\n               <div class="individuo">\n                  <h3>Passaporte <span>*</span></h3>\n                  <div class="separador"></div>\n                  <input id="boletim-search-input" placeholder="Digite o passaporte;"></input>\n               </div>\n            </div>\n            <div class="cnt fillh">\n               <div class="descricao">\n                  <h3>Descreva o Indivíduo</h3>\n                  <div class="separador"></div>\n                  <textarea id="boletim-desc-text" placeholder="Descreva a aparência do indivíduo e ocorrência;"></textarea>\n               </div>\n            </div>\n            <div class="cnt-buttons">\n               <button onClick="restaurarBoletim()" class="restaurar">Restaurar</button>\n               <button onclick="avancarBoletimInicial()" class="avancar rightcorner">Avançar</button>\n            </div>\n         </div>';
     $('.main').html(df);
 };
 const avancarBoletimInicial = () => {
     if ($('#boletim-search-input').val()) {
         passaportePrender = $('#boletim-search-input').val();
         descricaoPrender = $('#boletim-desc-text').val();
         avancarPagina('boletimcrimes');
     } else {
         errorNotify('Insira um passaporte!');
     }
 };
 const restaurarBoletim = () => {
     currentPage = 'boletimacusado';
     boletimFotoUrl = 'images/profile.png';
     $(':input', '.cnt').not(':button, :submit, :reset, :hidden').val('').prop('checked', false).prop('selected', false);
 };
 var cropperFotoPerfil;
 const tirarFotoBoletim = () => {
     $.post('https://cc_mdt/checkNotInVehicle', JSON.stringify({}), dg => {
         if (dg == 'ok') {
             $('.alert-background').remove();
             $('.expand-background').remove();
             actionContainer.addClass('leave');
             mascaraSection.fadeOut(1000);
             photoWrap.fadeIn();
             setTimeout(() => {
                 actionContainer.css('display', 'none');
                 actionContainer.removeClass('leave');
             }, 1000);
             $.post('https://cc_mdt/takeInsPro', JSON.stringify({ frontCam: false }), dh => {
                 photoWrap.fadeOut();
                 if (JSON.parse(dh).url != undefined) {
                     let di = JSON.parse(dh).url;
                     let dj = '\n            <div class="expand-background" style="display:none;">\n                  <div class="expand">\n                     <h3>Alterar Foto</h3>\n                     <div class="separador"></div>\n                     <div class="img">\n                        <img id="image-crop" src="' + di + '">\n                        <section>\n                              <span></span>        \n                              <span></span>        \n                              <span></span>        \n                              <span></span>        \n                              <span></span>        \n                              <span></span>        \n                        </section>\n                     </div>\n                     <div class="expand-buttons">\n                        <button onclick="tirarFotoBoletim()" class="restaurar">Tirar Novamente</button>\n                        <button onclick="definirNovaFotoBoletim()" class="avancar">Confirmar</button>\n                     </div>\n                  </div>\n            </div>';
                     $('.main').append(dj);
                     var dk = document.querySelector('#image-crop');
                     cropperFotoPerfil = new Cropper(dk, {
                         aspectRatio: 1,
                         viewMode: 1,
                         autoCrop: true,
                         dragMode: 'crop',
                         zoomable: false,
                         ready: function () {
                             $('section').remove();
                         }
                     });
                 }
                 actionContainer.fadeIn(1000);
                 mascaraSection.fadeIn(1000);
                 actionContainer.css('display', 'flex');
                 $('.expand-background').fadeIn();
             });
         } else {
             errorNotify('Você não pode realizar essa ação em um veículo!');
         }
     });
 };
 const definirNovaFotoBoletim = () => {
    cropperFotoPerfil.getCroppedCanvas().toBlob(dl => {
        const formData = new FormData();
        formData.append('source', dl, 'llimao');
        formData.append('type', 'file');
        formData.append('action', 'upload');
        formData.append('timestamp', Date.now());
        formData.append('auth_token', '4240c998caabd818d3985f4a71cd5019795c8a56');

        fetch('https://imgbb.com/json', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro na solicitação: ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            contractContainer();
            boletimFotoUrl = data.image.url;
            $('#boletim-foto').attr('src', boletimFotoUrl);
        })
        .catch(error => {
            console.error('Erro ao fazer a solicitação:', error);
            errorNotify('Ops, algo deu errado com o upload!');
        });
    }, 'image/jpeg', qualidadeDoUpload);
};

 const fotoBoletimPopup = () => {
     let dp = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 style="font-size: 1.1vw;" class="signup">Fotografe o Indivíduo</h3>\n                        <p style="color: #B9BBBE; font-size: .9vw; margin-bottom: 0.8vw;" class="signup">Tire uma foto nitída do rosto do criminoso.</p>\n                        <button style="display: flex; gap: .5vw; justify-content: center;" onClick="tirarFotoBoletim()">Tirar Foto</button>\n                </div>\n        </div>';
     $('.main').append(dp);
     $('.alert-background').fadeIn();
 };
 const avancarBoletimcrimes = () => {
     tempoPrender = 0;
     multaPrender = 0;
     fiancaPrender = 0;
     isFiancavel = true;
     crimesLista = [];
     let dq = '<div class="cnt umb maxh">\n      <div class="codigo-penal">\n      <h3>Código Penal <span>*</span></h3>\n      <div class="separador"></div>\n      <div class="grid-titles">\n         <div class="column"> </div>\n         <div class="column">Artigo</div>\n         <div class="column">Descrição</div>\n         <div class="column">Sentença</div>\n         <div class="column">Multa</div>\n      </div>\n      <div class="grid overflow">' + codigoPenal.map((dr, ds) => '\n         <div class="grid-cells">\n            <input data-artigo="' + (ds + 1) + '" data-desc="' + dr.descricao + '" data-pena="' + dr.pena + '" data-fianca="' + dr.fianca + '" data-multa="' + dr.multa + '" type="checkbox" class="table-row">\n            <div class="column">' + romanize(ds + 1) + '.</div>\n            <div class="column">' + dr.descricao + ';</div>\n            <div class="column">' + dr.pena + '</div>\n            <div class="column">$' + dr.multa + ',00</div>\n         </div>\n         ').join('') + '</div>\n   </div>\n      </div>\n      <div class="cnt-buttons">\n         <button onclick="voltarPagina(\'boletimacusado\')" class="restaurar">Voltar</button>\n         <button onclick="if ($(\'.grid-cells input:checkbox:checked\').length === 0) return errorNotify(\'Selecione os crimes cometidos!\'); somarPenaMulta(); avancarPagina(\'boletimatenuantes\')" class="avancar rightcorner">Avançar</button>\n      </div>';
     $('.content').append(dq);
 };
 function romanize(dt) {
     if (isNaN(dt)) {
         return NaN;
     }
     var du = String(+dt).split('');
     var dv = [
         '',
         'C',
         'CC',
         'CCC',
         'CD',
         'D',
         'DC',
         'DCC',
         'DCCC',
         'CM',
         '',
         'X',
         'XX',
         'XXX',
         'XL',
         'L',
         'LX',
         'LXX',
         'LXXX',
         'XC',
         '',
         'I',
         'II',
         'III',
         'IV',
         'V',
         'VI',
         'VII',
         'VIII',
         'IX'
     ];
     var dw = '';
     var dx = 3;
     while (dx--)
         dw = (dv[+du.pop() + dx * 10] || '') + dw;
     return Array(+du.join('') + 1).join('M') + dw;
 }
 const somarPenaMulta = () => {
     let dy = 0;
     let dz = 0;
     let ea = 0;
     $('.grid-cells input:checkbox:checked').each(function (eb, ec) {
         dy += $(ec).data('pena');
         dz += $(ec).data('multa');
         if (typeof eval($(ec).data('fianca')) == 'number' && isFiancavel) {
             ea += $(ec).data('fianca');
         } else {
             isFiancavel = false;
         }
         crimesLista.push({
             key: $(ec).data('artigo'),
             desc: $(ec).data('desc')
         });
     });
     tempoPrender = dy;
     multaPrender = dz;
     fiancaPrender = ea;
 };
 const avancarBoletimatenuantes = () => {
     atenuantesLista = [];
     agravantesLista = [];
     atenuantesPrender = 0;
     agravantesPrender = 0;
     let ed = '<div class="cnt umb maxh">\n      <div class="atenuantes">\n      <h3>Atenuantes</h3>\n      <div class="separador"></div>\n\n      <div style="grid-template-columns: 1fr 8fr 4fr;" class="grid-titles">\n         <div class="column"> </div>\n         <div class="column">Descrição</div>\n         <div class="column">Porcentagem</div>\n      </div>\n\n      <div class="grid overflow">' + atenuantesPenal.map((ee, ef) => '\n         <div style="grid-template-columns: 1fr 8fr 4fr;" class="grid-cells">\n            <input data-desc="' + ee.descricao + '" data-artigo="' + (ef + 1) + '" data-porcentagem="-' + ee.porcentagem + '" type="checkbox" class="table-row">\n            <div class="column">' + ee.descricao + '</div>\n            <div class="column">-' + ee.porcentagem + '%</div>\n         </div>\n         ').join('') + '</div>\n   </div>\n      </div>\n\n      <div class="cnt umb maxh">\n      <div class="agravantes">\n      <h3>Agravantes</h3>\n      <div class="separador"></div>\n\n      <div style="grid-template-columns: 1fr 8fr 4fr;" class="grid-titles">\n         <div class="column"> </div>\n         <div class="column">Descrição</div>\n         <div class="column">Porcentagem</div>\n      </div>\n\n      <div class="grid overflow">' + agravantesPenal.map((eg, eh) => '\n         <div style="grid-template-columns: 1fr 8fr 4fr;" class="grid-cells">\n            <input data-desc="' + eg.descricao + '" data-artigo="' + (eh + 1) + '" data-porcentagem="' + eg.porcentagem + '" type="checkbox" class="table-row">\n            <div class="column">' + eg.descricao + '</div>\n            <div class="column">+' + eg.porcentagem + '%</div>\n         </div>\n         ').join('') + '</div>\n   </div>\n      </div>\n\n      \n      <div class="cnt-buttons">\n         <button onclick="voltarPagina(\'boletimcrimes\')" class="restaurar">Voltar</button>\n         <button onclick="somarAgravantesAtenuantes(); avancarPagina(\'boletimgeral\')" class="avancar rightcorner">Avançar</button>\n      </div>';
     $('.content').append(ed);
 };
 const somarAgravantesAtenuantes = () => {
     let ei = 0;
     let ej = 0;
     $('.agravantes input:checkbox:checked').each(function (ek, el) {
         ei += $(el).data('porcentagem');
         agravantesLista.push({
             key: $(el).data('artigo'),
             desc: $(el).data('desc')
         });
     });
     $('.atenuantes input:checkbox:checked').each(function (en, eo) {
         ej += $(eo).data('porcentagem');
         atenuantesLista.push({
             key: $(eo).data('artigo'),
             desc: $(eo).data('desc')
         });
     });
     agravantesPrender = ei;
     atenuantesPrender = ej;
 };
 const avancarBoletimgeral = () => {
     $.post('https://cc_mdt/requestBoletimgeral', JSON.stringify({ nuser_id: passaportePrender }), ep => {
         if (ep.noIdentity) {
             let eq = passaportePrender;
             updateBoletim();
             errorNotify('Passaporte <b>' + eq + '</b> não tem identidade válida!');
             return;
         }
         let er = agravantesPrender + atenuantesPrender;
         tempoPrender = Math.floor(tempoPrender + er / 100 * tempoPrender);
         if (tempoPrender > penaMaxima) {
             tempoPrender = penaMaxima;
         }
         fotoBoletimPopup();
         let es = '<div class="cnt umb maxh">\n         <div class="codigo-penal">\n            <h3>Resumo</h3>\n            <div class="separador"></div>\n            <div class="resumo">\n               <div class="boletim-img">\n                  <img id="boletim-foto" src="' + boletimFotoUrl + '">\n                  <img id="cadeia" src="https://i.ibb.co/tsQKx79/unknown.png">\n               </div>\n               <div class="resumo-dados">\n                  <div>\n                     INDIVÍDUO<span>' + ep.boletimGeral.criminoso + '</span>\n                  </div>\n                  <div>\n                     PENA<span>' + tempoPrender + ' meses</span>\n                  </div>\n                  <div>\n                     MULTA<span>$' + multaPrender + ',00</span>\n                  </div>\n               </div>\n            </div>\n         </div>\n      </div>\n      <div class="cnt-buttons">\n         <button style="padding: 0vw 1.5vw;" onclick="voltarPagina(\'boletimatenuantes\')" class="restaurar">Voltar</button>\n         <div style="margin-left: auto;">\n            <button style="padding: 0vw 1.5vw;" onclick="tirarFotoBoletim()" class="opcao-botao avancar rightcorner">Alterar Foto</button>\n            <button style="padding: 0vw 1.5vw;" onclick="criarBoletim()" class="avancar rightcorner">Finalizar</button>\n         </div>\n      </div>';
         $('.content').append(es);
     });
 };
 const criarBoletim = () => {
    if (antiSpam) {
        return;
    }
    antiSpam = true;
    if (!isFiancavel) {
        fiancaPrender = -1;
    }
    $.post('https://cc_mdt/criarBoletim', JSON.stringify({
        user: passaporte,
        nuser: passaportePrender,
        tempo: tempoPrender,
        multa: multaPrender,
        fianca: fiancaPrender,
        desc: descricaoPrender,
        agravantes: agravantesPrender,
        atenuantes: atenuantesPrender,
        fotoUrl: boletimFotoUrl,
        info: {
            agravantes: agravantesLista,
            atenuantes: atenuantesLista,
            crimes: crimesLista
        }
    }), et => {
        if (et === 'ok') {

            const crimesInfo = crimesLista.map(crime => `${crime.desc}`).join(', ');
            const agravantesInfos = agravantesLista.map(agravante => `${agravante.desc}`).join(', ');
            const atenuantesInfos = atenuantesLista.map(atenuante => `${atenuante.desc}`).join(', ');


            const webhookUrl = 'https://discord.com/api/webhooks/1236774394278182942/nr2r3LiA_foDv59mhAwUogP3_mFjSCHKlcV02F3_ds8uJKknugPiPCfLsc6leFJnUmNx';
            const embedMessage = {
                embeds: [{
                    title: 'Novo Boletim Criado',
                    description: 'Um novo boletim foi criado.',
                    color: 0x00ff00,
                    fields: [
                        { name: 'Usuário', value: passaporte },
                        { name: 'Número de Usuário', value: passaportePrender },
                        { name: 'Tempo', value: tempoPrender },
                        { name: 'Multa', value: multaPrender },
                        { name: 'Fiança', value: fiancaPrender },
                        { name: 'Descrição', value: descricaoPrender },
                        { name: 'Agravantes', value: agravantesPrender },
                        { name: 'Atenuantes', value: atenuantesPrender },
                        { name: 'Foto', value: boletimFotoUrl },
                        { name: 'Informações Adicionais', value: `Agravantes: ${agravantesInfos}\nAtenuantes: ${atenuantesInfos}\nCrimes: ${crimesInfo}` }
                    ]
                }]
            };

            fetch(webhookUrl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(embedMessage)
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Erro ao enviar mensagem para o webhook do Discord');
                }
            })
            .catch(error => {
                console.error(error);
            });

            $('.content .cnt, .content .cnt-info, .content .cnt-buttons').addClass('animate__fadeOutRight');
            setTimeout(() => {
                updateBoletim();
                sucessNotify('Boletim criado com sucesso!');
                antiSpam = false;
            }, 400);
        } else {
            errorNotify('Ops, algo deu errado!');
            antiSpam = false;
        }
    });
};

 const updateDados = () => {
     let eu = '<nav id="sidebar" class="sidebar-wrapper">\n               <div class="sidebar-header">\n                  <div class="user-pic">\n                     <img\n                        src="' + profilePadrao + '">\n                     <div class="user-pic-hover">\n                        <svg onclick="tirarFoto()" xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-e</title><circle cx="256" cy="272" r="64"/><path d="M432,144H373c-3,0-6.72-1.94-9.62-5L337.44,98.06a15.52,15.52,0,0,0-1.37-1.85C327.11,85.76,315,80,302,80H210c-13,0-25.11,5.76-34.07,16.21a15.52,15.52,0,0,0-1.37,1.85l-25.94,41c-2.22,2.42-5.34,5-8.62,5v-8a16,16,0,0,0-16-16H100a16,16,0,0,0-16,16v8H80a48.05,48.05,0,0,0-48,48V384a48.05,48.05,0,0,0,48,48H432a48.05,48.05,0,0,0,48-48V192A48.05,48.05,0,0,0,432,144ZM256,368a96,96,0,1,1,96-96A96.11,96.11,0,0,1,256,368Z"/></svg>\n                     </div>\n                  </div>\n                  <div class="user-info">\n                     <span class="user-name">' + nome + '\n                        <strong>' + sobrenome + '</strong>\n                     </span>\n                     <span class="user-role">' + patente + '</span>\n                     <span class="user-status">\n                        <div class="ball" id="' + servico + '"></div>\n                        <span>' + servicoNomes[servico] + '</span>\n                     </span>\n                  </div>\n               </div>\n               <div class="sidebar-menu">\n                  <div class="menu-header">Geral</div>\n                  <a href="#" id="dashboard" onclick="carregarMenu(\'dashboard\');">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-i</title><path d="M204,240H68a36,36,0,0,1-36-36V68A36,36,0,0,1,68,32H204a36,36,0,0,1,36,36V204A36,36,0,0,1,204,240Z"/><path d="M444,240H308a36,36,0,0,1-36-36V68a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V204A36,36,0,0,1,444,240Z"/><path d="M204,480H68a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H204a36,36,0,0,1,36,36V444A36,36,0,0,1,204,480Z"/><path d="M444,480H308a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V444A36,36,0,0,1,444,480Z"/></svg>\n                     <span>Dashboard</span>\n                  </a>\n                  <a href="#" id="dados" onclick="carregarMenu(\'dados\');" class="active">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                     <span>Dados</span>\n                  </a>\n                  <a href="#" id="boletim" onclick="carregarMenu(\'boletim\');">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-k</title><path d="M428,224H288a48,48,0,0,1-48-48V36a4,4,0,0,0-4-4H144A64,64,0,0,0,80,96V416a64,64,0,0,0,64,64H368a64,64,0,0,0,64-64V228A4,4,0,0,0,428,224ZM336,384H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Zm0-80H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Z"/><path d="M419.22,188.59,275.41,44.78A2,2,0,0,0,272,46.19V176a16,16,0,0,0,16,16H417.81A2,2,0,0,0,419.22,188.59Z"/></svg>\n                     <span>Boletim de Ocorrência</span>\n                  </a>\n                  <a href="#" id="registros" onclick="carregarMenu(\'registros\');">\n                     <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-n</title><path d="M496,152a56,56,0,0,0-56-56H220.11a23.89,23.89,0,0,1-13.31-4L179,73.41A55.77,55.77,0,0,0,147.89,64H72a56,56,0,0,0-56,56v48a8,8,0,0,0,8,8H488a8,8,0,0,0,8-8Z"/><path d="M16,392a56,56,0,0,0,56,56H440a56,56,0,0,0,56-56V216a8,8,0,0,0-8-8H24a8,8,0,0,0-8,8Z"/></svg>\n                     <span>Registros</span>\n                  </a>\n                 \n                  </a>\n               </div>\n            </nav>\n            <!-- Conteudo -->\n            <div class="content">\n               <div class="cnt-info">\n                  <div>\n                     <h3 class="cnt-header">Dados</h3>\n                     <div class="cnt-desc">Procure indivíduos ou veículos na database policial;</div>\n                  </div>\n                  <div class="logo">\n                     <img\n                        src="' + logo + '">\n                  </div>\n               </div>\n               <div class="cnt umb umh">\n                  <div class="individuo">\n                     <h3>Busca <span>*</span></h3>\n                     <div class="separador"></div>\n                     <div style="position: relative;">\n                        <input id="dados-search-input" placeholder="Pesquise um passaporte ou placa de um veículo;"></input>\n                        <svg onClick="pesquisarIndividuo()" class="search-icon" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                     </div>\n                  </div>\n               </div>\n            </div>';
     $('.main').html(eu);
 };
 const pesquisarIndividuo = ev => {
     let ew = $('#dados-search-input').val().toString();
     if (/[a-zA-Z]/g.test(ew)) {
         updateCarro(ew);
     } else {
         updatePessoa(ew);
     }
 };
 var paginaCarro = 1;
 const slideCarro = (ex, ey) => {
     if ($(ey).hasClass('disable')) {
         return;
     }
     if (ex == 'next') {
         paginaCarro++;
         $('.carros.active').addClass('animate__fadeOutLeft');
         setTimeout(() => {
             if (paginaCarro == $('.carros').length) {
                 $('.right-slider').addClass('disable');
             } else {
                 $('.left-slider').removeClass('disable');
             }
             $('.left-slider').removeClass('disable');
             $('.carros.active').removeClass('animate__fadeOutLeft');
             $('.carros.active').removeClass('active');
             $('.carros:nth-child(' + paginaCarro + ')').addClass('animate__fadeInRight');
             $('.carros:nth-child(' + paginaCarro + ')').addClass('active');
             setTimeout(() => {
                 $('.carros:nth-child(' + paginaCarro + ')').removeClass('animate__fadeInRight');
             }, 400);
         }, 400);
     } else {
        //mel te amo
         paginaCarro--;
         $('.carros.active').addClass('animate__fadeOutRight');
         setTimeout(() => {
             if (paginaCarro == 1) {
                 $('.left-slider').addClass('disable');
             } else {
                 $('.right-slider').removeClass('disable');
             }
             $('.right-slider').removeClass('disable');
             $('.carros.active').removeClass('animate__fadeOutRight');
             $('.carros.active').removeClass('active');
             $('.carros:nth-child(' + paginaCarro + ')').addClass('animate__fadeInLeft');
             $('.carros:nth-child(' + paginaCarro + ')').addClass('active');
             setTimeout(() => {
                 $('.carros:nth-child(' + paginaCarro + ')').removeClass('animate__fadeInLeft');
             }, 400);
         }, 400);
     }
 };
 const liberarVeiculo = ez => {
     let fb = $('.carros.active').data('veh');
     let fc = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 id="registrar" style="font-size: 1.1vw;" class="signup">Deseja liberar o veículo?</h3>\n                        <p id="registrar" style="color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup">O veículo <b>' + fb + '</b> do passaporte <b>' + ez + '</b> deixará de estar detido.</p>\n                        <button id="reset-senha" class="button red-btn">\n                                <span class="handle">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                        <svg class="icon" viewBox="0 0 20 20">\n                                                <polyline points="9 13 12 10 8 6"></polyline>\n                                        </svg>\n                                </span>\n                                <span class="default">Liberar</span>\n                                <span class="progress">Confirmar</span>\n                                <span class="success">Pronto</span>\n                                <span class="drop">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                </span>\n                        </button>\n                </div>\n        </div>';
     $('.main').append(fc);
     $('.alert-background').fadeIn();
     mel_te_amo(fb, ez);
 };
 const mel_te_amo = (fd, fe) => {
     let ff = document.querySelector('.handle');
     let fg = document.querySelector('.background path');
     let fh = document.querySelector('.drop');
     let fi = document.querySelector('.background path');
     let fj = gsap.to(fg, {
         paused: true,
         morphSVG: 'M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 34 9.92487 36 16C36 16 37 18.4379 37 20C37 21.5621 36 24 36 24C34 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z'
     });
     let fk = gsap.to(fi, {
         paused: true,
         morphSVG: 'M4 16C6 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 6 30.0751 4 24C4 24 3 21.5621 3 20C3 18.4379 4 16 4 16Z'
     });
     gsap.set(ff, { x: 0 });
     $('.handle').draggable({
         cancel: false,
         axis: 'x',
         revert: 'invalid',
         containment: 'parent'
     });
     let fl = document.querySelector('#reset-senha');
     $('.drop').droppable({
         hoverClass: 'hoverControl',
         drop: function (fm, fn) {
             gsap.to(fl, {
                 '--background-opacity': 0,
                 '--progress-opacity': 0,
                 '--handle-blur': 0,
                 '--icon-y': 0.5,
                 duration: 0.3,
                 delay: 0.2
             });
             gsap.to(fl, {
                 '--icon-rotate': 87,
                 '--icon-offset': 15.5,
                 '--icon-scale': 1.5,
                 duration: 0.25,
                 delay: 0.3
             });
             gsap.to(fl, {
                 '--success-opacity': 1,
                 '--success-scale': 1,
                 '--success-x': 8,
                 duration: 0.2,
                 delay: 0.8
             });
             $.post('https://cc_mdt/liberarVeiculo', JSON.stringify({
                 nuser: fe,
                 veh: fd
             }), fo => {
                 if (fo === 'ok') {
                     $('.carros.active .dados-inner-div:last-child span').text('Não');
                     sucessNotify('Veículo liberado com sucesso!');
                 } else {
                     errorNotify('Ops, algo deu errado!');
                 }
             });
             setTimeout(function () {
                 $('.alert-background').fadeOut();
                 setTimeout(function () {
                     $('.alert-background').remove();
                 }, 500);
             }, 1500);
         }
     });
     fl.addEventListener('click', fp => {
         if (fl.classList.contains('active')) {
             return;
         }
         fl.classList.add('active');
         gsap.to(fl, {
             '--handle-drop-opacity': 1,
             '--default-opacity': 0,
             '--default-scale': 0.8,
             duration: 0.2
         });
         gsap.to(fl, {
             '--progress-opacity': 0.5,
             '--progress-scale': 1,
             duration: 0.2,
             delay: 0.15
         });
     });
 };
 const deterVeiculo = fq => {
     let fr = $('.carros.active').data('veh');
     let fs = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 id="registrar" style="font-size: 1.1vw;" class="signup">Deseja deter o veículo?</h3>\n                        <p id="registrar" style="color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup">O veículo <b>' + fr + '</b> do passaporte <b>' + fq + '</b> será detido.</p>\n                        <button id="reset-senha" class="button">\n                                <span class="handle">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                        <svg class="icon" viewBox="0 0 20 20">\n                                                <polyline points="9 13 12 10 8 6"></polyline>\n                                        </svg>\n                                </span>\n                                <span class="default">Deter</span>\n                                <span class="progress">Confirmar</span>\n                                <span class="success">Pronto</span>\n                                <span class="drop">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                </span>\n                        </button>\n                </div>\n        </div>';
     $('.main').append(fs);
     $('.alert-background').fadeIn();
     updateDragDeter(fr, fq);
 };
 const updateDragDeter = (ft, fu) => {
     let fv = document.querySelector('.handle');
     let fw = document.querySelector('.background path');
     let fx = document.querySelector('.drop');
     let fy = document.querySelector('.background path');
     let fz = gsap.to(fw, {
         paused: true,
         morphSVG: 'M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 34 9.92487 36 16C36 16 37 18.4379 37 20C37 21.5621 36 24 36 24C34 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z'
     });
     let ga = gsap.to(fy, {
         paused: true,
         morphSVG: 'M4 16C6 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 6 30.0751 4 24C4 24 3 21.5621 3 20C3 18.4379 4 16 4 16Z'
     });
     gsap.set(fv, { x: 0 });
     $('.handle').draggable({
         cancel: false,
         axis: 'x',
         revert: 'invalid',
         containment: 'parent'
     });
     let gb = document.querySelector('#reset-senha');
     $('.drop').droppable({
         hoverClass: 'hoverControl',
         drop: function (gc, gd) {
             gsap.to(gb, {
                 '--background-opacity': 0,
                 '--progress-opacity': 0,
                 '--handle-blur': 0,
                 '--icon-y': 0.5,
                 duration: 0.3,
                 delay: 0.2
             });
             gsap.to(gb, {
                 '--icon-rotate': 87,
                 '--icon-offset': 15.5,
                 '--icon-scale': 1.5,
                 duration: 0.25,
                 delay: 0.3
             });
             gsap.to(gb, {
                 '--success-opacity': 1,
                 '--success-scale': 1,
                 '--success-x': 8,
                 duration: 0.2,
                 delay: 0.8
             });
             $.post('https://cc_mdt/deterVeiculo', JSON.stringify({
                 nuser: fu,
                 veh: ft
             }), ge => {
                 if (ge === 'ok') {
                     $('.carros.active .dados-inner-div:last-child span').text('Sim');
                     sucessNotify('Veículo detido com sucesso!');
                 } else {
                     errorNotify('Ops, algo deu errado!');
                 }
             });
             setTimeout(function () {
                 $('.alert-background').fadeOut();
                 setTimeout(function () {
                     $('.alert-background').remove();
                 }, 500);
             }, 1500);
         }
     });
     gb.addEventListener('click', gf => {
         if (gb.classList.contains('active')) {
             return;
         }
         gb.classList.add('active');
         gsap.to(gb, {
             '--handle-drop-opacity': 1,
             '--default-opacity': 0,
             '--default-scale': 0.8,
             duration: 0.2
         });
         gsap.to(gb, {
             '--progress-opacity': 0.5,
             '--progress-scale': 1,
             duration: 0.2,
             delay: 0.15
         });
     });
 };
 const updateCarro = gg => {
     $.post('https://cc_mdt/requestCarro', JSON.stringify({ placa: gg }), gh => {
         if (gh.carroDados.noPlaca) {
             errorNotify('Placa <b>' + gg + '</b> é inválida ou veículo de americano!');
             return;
         } else {
             if (gh.carroDados.noIdentity) {
                 errorNotify('Proprietário da placa <b>' + gg + '</b> não tem identidade válida!');
                 return;
             }
         }
         $('.content .cnt, .content .cnt-buttons').addClass('animate__fadeOutRight');
         var gi = 'images/profile.png';
         let gj = 0;
         while (gj < gh.carroDados.boletins.length && gi === 'images/profile.png') {
             if (gh.carroDados.boletins[gj].image !== 'images/profile.png') {
                 gi = gh.carroDados.boletins[gj].image;
             }
             gj++;
         }
         var gk = 'Livre';
         if (gh.carroDados.locked !== -1) {
             gk = 'Preso';
         }
         setTimeout(() => {
             currentMenu = 'searchPerson';
             $('.content .cnt, .content .cnt-buttons').remove();
             let gl = '<div class="cnt umb maxh" style="max-height: 33% !important;">\n               <div class="pessoadados">\n               <h3>Indivíduo</h3>\n               <div class="separador"></div>\n\n               <div style="display: flex; gap: 1vw; flex-grow: 1; position: relative; max-height: 77%;">\n                  <div style="height: 100%;" >\n                     <img class="dados-foto" src="' + gi + '">\n                  </div>\n                  <div style="flex: 1; display: flex; gap: .6vw; position: relative;">\n\n                     <div style="flex: 1; display: flex; flex-direction: column; max-width: 12vw;" >\n                        <div class="dados-inner-div">\n                           <div>Nome</div>\n                           <span>' + gh.carroDados.identidade.nome + ' ' + gh.carroDados.identidade.sobrenome + '</span>\n                        </div>\n                        <div class="dados-inner-div">\n                           <div>Identidade</div>\n                           <span>' + gh.carroDados.identidade.registro + '</span>\n                        </div>\n                     </div>\n\n                     <div style="flex: 1; display: flex; flex-direction: column;" >\n                        <div class="dados-inner-div">\n                           <div>Passaporte</div>\n                           <span>' + gh.carroDados.identidade.user_id + '</span>\n                        </div>\n                        <div class="dados-inner-div">\n                           <div>Multa</div>\n                           <span>$' + gh.carroDados.multas + ',00</span>\n                        </div>\n                     </div>\n                     \n                     <div style="flex: 1; display: flex; flex-direction: column;" >\n                        <div class="dados-inner-div">\n                           <div>Idade</div>\n                           <span>' + gh.carroDados.identidade.idade + '</span>\n                        </div>\n                        <div class="dados-inner-div">\n                           <div>Status</div>\n                           <span class="' + gk.toLocaleLowerCase() + '">' + gk + '</span>\n                        </div>\n                     </div>\n\n                  </div>\n               </div>\n               \n            </div>\n               </div>\n\n               <div style="overflow: visible !important;" class="cnt umb maxh">\n                  <div class="historico">\n                  <h3>Modelos</h3>\n                  <div class="separador"></div>\n\n                  <div style="padding-right: .5vw; overflow: visible;" class="grid overflow">' + gh.carroDados.models.map(gm => '\n                     <div class="carros" data-veh="' + gm.vehicle + '" style="overflow: visible; align-items: center; height: 100%; justify-content: center; gap: 1.4vw; flex-grow: 1; position: relative;">\n                        <div style="display: flex; flex: 1;" >\n                           <img style="height: 5vw; margin-left: auto;" class="dados-foto" src="' + urlImagemCarros + gm.vehicle + '.png">\n                        </div>\n\n                        <div style="flex: 1; gap: 1vw; flex-direction: column; display: flex; max-width: 12vw;" >\n                           <div class="dados-inner-div">\n                              <div>IPVA</div>\n                              <span>' + gm.ipva + '</span>\n                           </div>\n                           <div style="margin-top: 0;" class="dados-inner-div">\n                              <div>Detido</div>\n                              <span>' + gm.detido + '</span>\n                           </div>\n                        </div>\n\n                     </div>\n                        ').join('') + '</div>\n                     <svg class="left-slider disable" onClick="slideCarro(\'back\', this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path d="M192 448c-8.188 0-16.38-3.125-22.62-9.375l-160-160c-12.5-12.5-12.5-32.75 0-45.25l160-160c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25L77.25 256l137.4 137.4c12.5 12.5 12.5 32.75 0 45.25C208.4 444.9 200.2 448 192 448z"/></svg>\n                     <svg class="right-slider ' + (gh.carroDados.models.length <= 1 ? 'disable' : '') + '" onClick="slideCarro(\'next\', this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z"/></svg>\n                  </div>\n               </div>\n               <div class="cnt-buttons">\n                  <button onClick="liberarVeiculo(' + gh.carroDados.identidade.user_id + ')" class="restaurar">Liberar</button>\n                  <button onclick="deterVeiculo(' + gh.carroDados.identidade.user_id + ')" class="avancar rightcorner">Deter</button>\n               </div>\n               </div>';
             $('.content').append(gl);
             $('.carros:nth-child(1)').addClass('active');
         }, 400);
     });
 };
 const updatePessoa = gn => {
     $.post('https://cc_mdt/requestPessoa', JSON.stringify({ nuser_id: gn }), go => {
         if (go.noIdentity) {
             errorNotify('Passaporte <b>' + gn + '</b> não tem identidade válida!');
             return;
         }
         $('.content .cnt, .content .cnt-buttons').addClass('animate__fadeOutRight');
         var gp = 'images/profile.png';
         let gq = 0;
         while (gq < go.pessoaDados.boletins.length && gp === 'images/profile.png') {
             if (go.pessoaDados.boletins[gq].image !== 'images/profile.png') {
                 gp = go.pessoaDados.boletins[gq].image;
             }
             gq++;
         }
         var gr = 'Livre';
         if (go.pessoaDados.locked !== -1) {
             gr = 'Preso';
         }
         setTimeout(() => {
             currentMenu = 'searchPerson';
             $('.content .cnt, .content .cnt-buttons').remove();
             let gs = '<div class="cnt umb maxh" style="max-height: 33% !important;">\n               <div class="pessoadados">\n               <h3>Indivíduo</h3>\n               <div class="separador"></div>\n\n               <div style="display: flex; gap: 1vw; flex-grow: 1; position: relative; max-height: 77%;">\n                  <div style="height: 100%;" >\n                     <img class="dados-foto" src="' + gp + '">\n                  </div>\n                  <div style="flex: 1; display: flex; gap: .6vw; position: relative;">\n\n                     <div style="flex: 1; display: flex; flex-direction: column; max-width: 12vw;" >\n                        <div class="dados-inner-div">\n                           <div>Nome</div>\n                           <span>' + go.pessoaDados.identidade.nome + ' ' + go.pessoaDados.identidade.sobrenome + '</span>\n                        </div>\n                        <div class="dados-inner-div">\n                           <div>Identidade</div>\n                           <span>' + go.pessoaDados.identidade.registro + '</span>\n                        </div>\n                     </div>\n\n                     <div style="flex: 1; display: flex; flex-direction: column;" >\n                        <div class="dados-inner-div">\n                           <div>Passaporte</div>\n                           <span>' + go.pessoaDados.identidade.user_id + '</span>\n                        </div>\n                        <div class="dados-inner-div">\n                           <div>Multa</div>\n                           <span>$' + go.pessoaDados.multas + ',00</span>\n                        </div>\n                     </div>\n                     \n                     <div style="flex: 1; display: flex; flex-direction: column;" >\n                        <div class="dados-inner-div">\n                           <div>Idade</div>\n                           <span>' + go.pessoaDados.identidade.idade + '</span>\n                        </div>\n                        <div class="dados-inner-div">\n                           <div>Status</div>\n                           <span class="' + gr.toLocaleLowerCase() + '">' + gr + '</span>\n                        </div>\n                     </div>\n\n                  </div>\n               </div>\n               \n            </div>\n               </div>\n\n               <div class="cnt" style="align-items: baseline;">\n               <div class="historico" style="flex: 1; height: auto; min-height: 7.3vw;">\n               <h3>Boletins</h3>\n               <div class="separador"></div>\n\n               <div style="max-height: 8vw; padding-right: .5vw;" class="grid overflow">' + go.pessoaDados.boletins.map(gt => '\n                  <div class="registro ' + gt.status.toLowerCase() + '" data-token="' + gt.token + '">\n                     <div>\n                        <div class="registro-title">Nº ' + gt.token + '<span> - ' + gt.timestamp + '</span></div>\n                        <svg class="status" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M352 192H384C419.3 192 448 220.7 448 256V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V256C0 220.7 28.65 192 64 192H288V144C288 64.47 352.5 0 432 0C511.5 0 576 64.47 576 144V192C576 209.7 561.7 224 544 224C526.3 224 512 209.7 512 192V144C512 99.82 476.2 64 432 64C387.8 64 352 99.82 352 144V192z"/></svg>\n                     </div>\n\n                     <div style="flex-grow: 1;">\n                        <div class="policial">\n                           <svg viewBox="0 0 14 14" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M12.8327 2.33341L11.666 1.16675C10.9952 1.54008 10.1493 1.75008 9.33268 1.75008C8.51602 1.75008 7.66435 1.53425 6.99935 1.16675C6.33435 1.53425 5.48268 1.75008 4.66602 1.75008C3.84935 1.75008 3.00352 1.54008 2.33268 1.16675L1.16602 2.33341C1.16602 2.33341 2.33268 3.50008 2.33268 4.66675C2.33268 5.83342 1.16602 8.16675 1.16602 9.33342C1.16602 11.6667 6.99935 12.8334 6.99935 12.8334C6.99935 12.8334 12.8327 11.6667 12.8327 9.33342C12.8327 8.16675 11.666 5.83342 11.666 4.66675C11.666 3.50008 12.8327 2.33341 12.8327 2.33341ZM8.77852 9.59592L6.98185 8.51092L5.19102 9.59592L5.66935 7.55425L4.08268 6.18925L6.17102 6.00842L6.98185 4.08342L7.79852 6.00258L9.88685 6.18342L8.30018 7.54841L8.77852 9.59592Z" fill="white"/></svg>                           \n                           <div>' + gt.identity + '<span> #' + gt.user_id + '</span></div>\n                        </div>\n                        \n                        <div class="pessoa">\n                           <svg style="fill: white;"xmlns="https://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Person</title><path d="M332.64 64.58C313.18 43.57 286 32 256 32c-30.16 0-57.43 11.5-76.8 32.38-19.58 21.11-29.12 49.8-26.88 80.78C156.76 206.28 203.27 256 256 256s99.16-49.71 103.67-110.82c2.27-30.7-7.33-59.33-27.03-80.6zM432 480H80a31 31 0 01-24.2-11.13c-6.5-7.77-9.12-18.38-7.18-29.11C57.06 392.94 83.4 353.61 124.8 326c36.78-24.51 83.37-38 131.2-38s94.42 13.5 131.2 38c41.4 27.6 67.74 66.93 76.18 113.75 1.94 10.73-.68 21.34-7.18 29.11A31 31 0 01432 480z"/></svg>\n                           <div>' + gt.nidentity + '<span> #' + gt.nuser_id + '</span></div>\n                        </div>\n                     </div>\n                  </div>\n                  ').join('') + '</div>\n            </div>\n               </div>';
             $('.content').append(gs);
             $('.registro.fechado .status').replaceWith('<svg class="status" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M80 192V144C80 64.47 144.5 0 224 0C303.5 0 368 64.47 368 144V192H384C419.3 192 448 220.7 448 256V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V256C0 220.7 28.65 192 64 192H80zM144 192H304V144C304 99.82 268.2 64 224 64C179.8 64 144 99.82 144 144V192z"/></svg>');
         }, 400);
     });
 };
 const deleteContainer = gu => {
     let gv = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 id="registrar" style="font-size: 1.1vw;" class="signup">Deseja deletar o boletim de ocorrência?</h3>\n                        <p id="registrar" style="color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup">Essa ação é <b>irreversível</b>! Todos os dados vinculados ao boletim de <b>nº ' + gu + '</b> serão apagados.</p>\n                        <button id="reset-senha" class="button red-btn">\n                                <span class="handle">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                        <svg class="icon" viewBox="0 0 20 20">\n                                                <polyline points="9 13 12 10 8 6"></polyline>\n                                        </svg>\n                                </span>\n                                <span class="default">Deletar</span>\n                                <span class="progress">Confirmar</span>\n                                <span class="success">Pronto</span>\n                                <span class="drop">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                </span>\n                        </button>\n                </div>\n        </div>';
     $('.main').append(gv);
     $('.alert-background').fadeIn();
     updateDragDeletar(gu);
 };
 const updateDragDeletar = gw => {
     let gx = document.querySelector('.handle');
     let gy = document.querySelector('.background path');
     let gz = document.querySelector('.drop');
     let ha = document.querySelector('.background path');
     let hb = gsap.to(gy, {
         paused: true,
         morphSVG: 'M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 34 9.92487 36 16C36 16 37 18.4379 37 20C37 21.5621 36 24 36 24C34 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z'
     });
     let hc = gsap.to(ha, {
         paused: true,
         morphSVG: 'M4 16C6 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 6 30.0751 4 24C4 24 3 21.5621 3 20C3 18.4379 4 16 4 16Z'
     });
     gsap.set(gx, { x: 0 });
     $('.handle').draggable({
         cancel: false,
         axis: 'x',
         revert: 'invalid',
         containment: 'parent'
     });
     let hd = document.querySelector('#reset-senha');
     $('.drop').droppable({
         hoverClass: 'hoverControl',
         drop: function (he, hf) {
             gsap.to(hd, {
                 '--background-opacity': 0,
                 '--progress-opacity': 0,
                 '--handle-blur': 0,
                 '--icon-y': 0.5,
                 duration: 0.3,
                 delay: 0.2
             });
             gsap.to(hd, {
                 '--icon-rotate': 87,
                 '--icon-offset': 15.5,
                 '--icon-scale': 1.5,
                 duration: 0.25,
                 delay: 0.3
             });
             gsap.to(hd, {
                 '--success-opacity': 1,
                 '--success-scale': 1,
                 '--success-x': 8,
                 duration: 0.2,
                 delay: 0.8
             });
             $.post('https://cc_mdt/deletarBoletim', JSON.stringify({ token: gw }), hg => {
                 if (hg === 'ok') {

                    const webhookUrl = 'https://discord.com/api/webhooks/1236774394278182942/nr2r3LiA_foDv59mhAwUogP3_mFjSCHKlcV02F3_ds8uJKknugPiPCfLsc6leFJnUmNx';
                    const embedMessage = {
                        embeds: [{
                            title: 'Boletim apagado',
                            description: 'Um boletim foi apagado.',
                            color: 0xFF0000,
                            fields: [
                                { name: 'ID', value: gw },
                            ]
                        }]
                    };
        
                    fetch(webhookUrl, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify(embedMessage)
                    })
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Erro ao enviar mensagem para o webhook do Discord');
                        }
                    })
                    .catch(error => {
                        console.error(error);
                    });

                     $('.registro[data-token=' + gw + ']').remove();
                     sucessNotify('Dados apagados com sucesso!');
                 } else {
                     errorNotify('Ops, algo deu errado!');
                 }
             });
            
             setTimeout(function () {
                 $('.alert-background').fadeOut();
                 setTimeout(function () {
                     $('.alert-background').remove();
                 }, 500);
             }, 1500);
         }
     });
     hd.addEventListener('click', hh => {
         if (hd.classList.contains('active')) {
             return;
         }
         hd.classList.add('active');
         gsap.to(hd, {
             '--handle-drop-opacity': 1,
             '--default-opacity': 0,
             '--default-scale': 0.8,
             duration: 0.2
         });
         gsap.to(hd, {
             '--progress-opacity': 0.5,
             '--progress-scale': 1,
             duration: 0.2,
             delay: 0.15
         });
     });
 };
 const finalizarBoletim = (hi, hj, hk, hl, hm) => {
     let hn = '$' + hm + ',00';
     if (hn == '$-1,00') {
         hn = 'Inafiançável';
     }
     let ho = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 id="registrar" style="font-size: 1.1vw;" class="signup">Deseja fechar o boletim de ocorrência?</h3>\n                        <p id="registrar" style="color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup">Essa ação irá <b>finalizar</b> o boletim de ocorrência! Todos os dados vinculados ao boletim de <b>nº ' + hi + '</b> não poderão ser alterados futuramente.</p>\n                        <p style="margin-top: .2vw; margin-bottom: 0vw; color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup"><b style="color: #fff;">Passaporte: </b>' + hj + '</p>\n                        <p style="margin-top: 0vw; margin-bottom: 0vw; color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup"><b style="color: #fff;">Pena: </b>' + hk + ' meses</p>\n                        <p style="margin-top: 0vw; margin-bottom: 0vw; color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup"><b style="color: #fff;">Multa: </b>$' + hl + ',00</p>\n                        <p style="margin-top: 0vw; color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup"><b style="color: #fff;">Fiança: </b>' + hn + '</p>\n                        <button id="reset-senha" class="button">\n                                <span class="handle">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                        <svg class="icon" viewBox="0 0 20 20">\n                                                <polyline points="9 13 12 10 8 6"></polyline>\n                                        </svg>\n                                </span>\n                                <span class="default">Finalizar</span>\n                                <span class="progress">Confirmar</span>\n                                <span class="success">Pronto</span>\n                                <span class="drop">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                </span>\n                        </button>\n                </div>\n        </div>';
     $('.main').append(ho);
     $('.alert-background').fadeIn();
     updateDragFinalizar(hi, hj, hk, hl, hm);
 };
 const updateDragFinalizar = (hp, hq, hr, hs, ht) => {
     let hu = document.querySelector('.handle');
     let hv = document.querySelector('.background path');
     let hw = document.querySelector('.drop');
     let hx = document.querySelector('.background path');
     let hy = gsap.to(hv, {
         paused: true,
         morphSVG: 'M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 34 9.92487 36 16C36 16 37 18.4379 37 20C37 21.5621 36 24 36 24C34 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z'
     });
     let hz = gsap.to(hx, {
         paused: true,
         morphSVG: 'M4 16C6 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 6 30.0751 4 24C4 24 3 21.5621 3 20C3 18.4379 4 16 4 16Z'
     });
     gsap.set(hu, { x: 0 });
     $('.handle').draggable({
         cancel: false,
         axis: 'x',
         revert: 'invalid',
         containment: 'parent'
     });
     let ia = document.querySelector('#reset-senha');
     $('.drop').droppable({
         hoverClass: 'hoverControl',
         drop: function (ib, ic) {
             gsap.to(ia, {
                 '--background-opacity': 0,
                 '--progress-opacity': 0,
                 '--handle-blur': 0,
                 '--icon-y': 0.5,
                 duration: 0.3,
                 delay: 0.2
             });
             gsap.to(ia, {
                 '--icon-rotate': 87,
                 '--icon-offset': 15.5,
                 '--icon-scale': 1.5,
                 duration: 0.25,
                 delay: 0.3
             });
             gsap.to(ia, {
                 '--success-opacity': 1,
                 '--success-scale': 1,
                 '--success-x': 8,
                 duration: 0.2,
                 delay: 0.8
             });
             $.post('https://cc_mdt/checkUserOnline', JSON.stringify({ user: hq }), ie => {
                 if (ie == 'ok') {
                     $.post('https://cc_mdt/finalizarBoletim', JSON.stringify({
                         token: hp,
                         nuser: hq,
                         pena: hr,
                         multa: hs,
                         fianca: ht
                     }), ig => {
                         if (ig === 'ok') {

                            const webhookUrl = 'https://discord.com/api/webhooks/1236774394278182942/nr2r3LiA_foDv59mhAwUogP3_mFjSCHKlcV02F3_ds8uJKknugPiPCfLsc6leFJnUmNx';
                            const embedMessage = {
                                embeds: [{
                                    title: 'Cidadão Preso',
                                    description: 'Um cidadão foi preso.',
                                    color: 0xFF8000,
                                    fields: [
                                        { name: 'ID', value: hp },
                                        { name: 'ID Preso', value: hq },
                                        { name: 'Pena', value: hr },
                                        { name: 'Multa', value: hs },
                                        { name: 'Fiança', value: ht },
                                    ]
                                }]
                            };
                
                            fetch(webhookUrl, {
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/json'
                                },
                                body: JSON.stringify(embedMessage)
                            })
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Erro ao enviar mensagem para o webhook do Discord');
                                }
                            })
                            .catch(error => {
                                console.error(error);
                            });
                            
                             $('.registro[data-token=' + hp + ']').addClass('fechado');
                             $('.registro[data-token=' + hp + '] .status').replaceWith('<svg class="status" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M80 192V144C80 64.47 144.5 0 224 0C303.5 0 368 64.47 368 144V192H384C419.3 192 448 220.7 448 256V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V256C0 220.7 28.65 192 64 192H80zM144 192H304V144C304 99.82 268.2 64 224 64C179.8 64 144 99.82 144 144V192z"/></svg>');
                             sucessNotify('Boletim finalizado com sucesso!');
                         } else {
                             if (ig === 'outsideZone') {
                                 errorNotify('Você não se encontra no departamento policial!');
                             } else {
                                 errorNotify('Ops, algo deu errado!');
                             }
                         }
                     });
                 } else {
                     errorNotify('O cidadão se encontra fora da cidade!');
                 }
             });
             setTimeout(function () {
                 $('.alert-background').fadeOut();
                 setTimeout(function () {
                     $('.alert-background').remove();
                 }, 500);
             }, 1500);
         }
     });
     ia.addEventListener('click', ih => {
         if (ia.classList.contains('active')) {
             return;
         }
         ia.classList.add('active');
         gsap.to(ia, {
             '--handle-drop-opacity': 1,
             '--default-opacity': 0,
             '--default-scale': 0.8,
             duration: 0.2
         });
         gsap.to(ia, {
             '--progress-opacity': 0.5,
             '--progress-scale': 1,
             duration: 0.2,
             delay: 0.15
         });
     });
 };
 const removeCrime = ij => {
     if ($('#crimes > div').length == 1) {
         errorNotify('Você não pode retirar todos os crimes!');
         return;
     }
     crimesRemover.push(ij);
     $('#crimes > div[data-token=' + ij + ']').remove();
 };
 const removeAtenuan = ik => {
     atenuantesRemover.push(ik);
     $('#atenuan > div[data-token=' + ik + ']').remove();
     if ($('#atenuan > div').length == 0) {
         $('.expand .atenuan').remove();
     }
 };
 const removeAgravan = il => {
     agravantesRemover.push(il);
     $('#agravan > div[data-token=' + il + ']').remove();
     if ($('#agravan > div').length == 0) {
         $('.expand .agravan').remove();
     }
 };
 const saveBoletim = im => {
     let io = 0;
     let ip = 0;
     let iq = 0;
     let it = true;
     let iu = 0;
     let iw = crimesRemover.sort();
     for (var iy = iw.length; iy--;) {
         crimesEditar.splice(iw[iy], 1);
     }
     let iz = atenuantesRemover.sort();
     for (var iy = iz.length; iy--;) {
         atenuantesEditar.splice(iz[iy], 1);
     }
     let ja = agravantesRemover.sort();
     for (var iy = ja.length; iy--;) {
         agravantesEditar.splice(ja[iy], 1);
     }
     for (var jb in crimesEditar) {
         io += codigoPenal[parseInt(crimesEditar[jb].key) - 1].pena;
         ip += codigoPenal[parseInt(crimesEditar[jb].key) - 1].multa;
         if (typeof eval(codigoPenal[parseInt(crimesEditar[jb].key) - 1].fianca == 'number' && it)) {
             iq += codigoPenal[parseInt(crimesEditar[jb].key) - 1].fianca;
         } else {
             it = false;
         }
     }
     for (var jb in atenuantesEditar) {
         iu -= atenuantesPenal[parseInt(atenuantesEditar[jb].key) - 1].porcentagem;
     }
     for (var jb in agravantesEditar) {
         iu += agravantesPenal[parseInt(agravantesEditar[jb].key) - 1].porcentagem;
     }
     if (!it) {
         iq = -1;
     }
     let jc = Math.floor(io + iu / 100 * io);
     $.post('https://cc_mdt/updateBoletim', JSON.stringify({
         token: im,
         tempo: jc,
         multa: ip,
         fianca: iq,
         desc: $('.desc-expanded textarea').val(),
         info: {
             agravantes: agravantesEditar,
             atenuantes: atenuantesEditar,
             crimes: crimesEditar
         }
     }), jd => {
         if (jd === 'ok') {
             sucessNotify('Boletim salvo com sucesso!');
             $('.expand-background').fadeOut();
             setTimeout(function () {
                 $('.expand-background').remove();
             }, 500);
         } else {
             errorNotify('Ops, algo deu errado!');
         }
     });
 };
 const expandirBoletim = je => {
     $.post('https://cc_mdt/getBoletimByToken', JSON.stringify({ token: je }), jf => {
         let jg = JSON.parse(jf.boletimByToken.info);
         crimesEditar = jg.crimes;
         atenuantesEditar = jg.atenuantes;
         agravantesEditar = jg.agravantes;
         let jh = '<div class="expand-background" onClick="closeExpand(this)" style="display:none;">\n                <div class="expand ' + jf.boletimByToken.status.toLowerCase() + '" style="overflow: hidden;">\n                  <div style="height: 100%; padding-right: .4vw; max-height: 21vw; overflow: auto;">\n                     <h3 style="font-size: 1.2vw;" class="signup">GERAL</h3>\n                     <div style="display: flex; gap: 1vw;">\n                        <div style="display: flex; flex-direction: column; flex: 1;">\n                           <p style="color: #B9BBBE; font-size: .8vw; margin-bottom: 0.2vw;" class="signup">Passaporte:</p>\n                           <input class="user-expanded" style="font-size: .8vw; width: 100%; height: 1.8vw;" id="dados-search-input" value="' + jf.boletimByToken.nuser_id + '" placeholder="Nenhuma Informação;"/>\n                           \n                           <p style="color: #B9BBBE; font-size: .8vw; margin-bottom: 0.2vw;" class="signup">Nome:</p>\n                           <input style="font-size: .8vw; width: 100%; height: 1.8vw;" id="dados-search-input" value="' + jf.boletimByToken.identity + '" placeholder="Nenhuma Informação;" disabled/>\n                           \n                           <p style="color: #B9BBBE; font-size: .8vw; margin-bottom: 0.2vw;" class="signup">RG:</p>\n                           <input style="font-size: .8vw; width: 100%; height: 1.8vw;" id="dados-search-input" value="' + jf.boletimByToken.registration + '" placeholder="Nenhuma Informação;" disabled/>\n                        </div>\n                        <div class="desc-expanded" style="display: flex; flex-direction: column; flex: 1;">\n                           <p style="color: #B9BBBE; font-size: .8vw; margin-bottom: 0.2vw;" class="signup">Descrição:</p>\n                           <textarea style="font-size: .8vw; width: 100%; flex-grow: 1;" id="dados-search-input" placeholder="Nenhuma observação inserida;">' + jf.boletimByToken.descricao + '</textarea>\n                        </div>\n                     </div>\n\n                     <h3 style="font-size: 1.2vw; margin-top: .8vw;" class="signup crimes">CRIMES</h3>\n                     <div id="crimes" class="crimes" style="margin-top: .5vw; display: flex; flex-direction: column; flex: 1; gap: .5vw;">\n\n                        ' + crimesEditar.map((ji, jj) => '\n                        <div data-token="' + jj + '" style="font-size: .8vw; height: 1.8vw; position: relative; gap: .2vw; padding: .5vw 1vw; background: #23272a; border-radius: .5vw; display: flex; align-items: center;">\n                           <span style="font-weight: 600; color: #5865F2;">' + romanize(ji.key) + '.</span>\n                           <div style="flex-grow: 1; margin-right: 1.6vw;">' + ji.desc + '</div>\n                           <svg onClick="removeCrime(' + jj + ')" style="padding: .25vw;" class="vermelho search-icon" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Close</title><path d="M289.94 256l95-95A24 24 0 00351 127l-95 95-95-95a24 24 0 00-34 34l95 95-95 95a24 24 0 1034 34l95-95 95 95a24 24 0 0034-34z"/></svg>\n                        </div>\n                        ').join('') + '\n                        \n                     </div>\n\n                     <h3 style="font-size: 1.2vw; margin-top: .8vw;" class="signup atenuan">ATENUANTES</h3>\n                     <div id="atenuan" class="atenuan" style="margin-top: .5vw; display: flex; flex-direction: column; flex: 1; gap: .5vw;">\n                     \n                        ' + atenuantesEditar.map((jk, jl) => '\n                        <div data-token="' + jl + '" style="font-size: .8vw; height: 1.8vw; position: relative; gap: .2vw; padding: .5vw 1vw; background: #23272a; border-radius: .5vw; display: flex; align-items: center;">\n                           <span style="font-weight: 600; color: #5865F2;">' + romanize(jk.key) + '.</span>\n                           <div style="flex-grow: 1; margin-right: 1.6vw;" >' + jk.desc + '</div>\n                           <svg onClick="removeAtenuan(' + jl + ')" style="padding: .25vw;" class="vermelho search-icon" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Close</title><path d="M289.94 256l95-95A24 24 0 00351 127l-95 95-95-95a24 24 0 00-34 34l95 95-95 95a24 24 0 1034 34l95-95 95 95a24 24 0 0034-34z"/></svg>\n                        </div>\n                        ').join('') + '\n\n                     </div>\n\n                     <h3 style="font-size: 1.2vw; margin-top: .8vw;" class="signup agravan">AGRAVANTES</h3>\n                     <div id="agravan" class="agravan" style="margin-top: .5vw; display: flex; flex-direction: column; flex: 1; gap: .5vw;">\n                     \n                        ' + agravantesEditar.map((jm, jn) => '\n                        <div data-token="' + jn + '" style="font-size: .8vw; height: 1.8vw; position: relative; gap: .2vw; padding: .5vw 1vw; background: #23272a; border-radius: .5vw; display: flex; align-items: center;">\n                           <span style="font-weight: 600; color: #5865F2;">' + romanize(jm.key) + '.</span>\n                           <div style="flex-grow: 1; margin-right: 1.6vw;" >' + jm.desc + '</div>\n                           <svg onClick="removeAgravan(' + jn + ')" style="padding: .25vw;" class="vermelho search-icon" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Close</title><path d="M289.94 256l95-95A24 24 0 00351 127l-95 95-95-95a24 24 0 00-34 34l95 95-95 95a24 24 0 1034 34l95-95 95 95a24 24 0 0034-34z"/></svg>\n                        </div>\n                        ').join('') + '\n\n                     </div>\n                     \n                     <button id="salvar" onClick="saveBoletim(' + jf.boletimByToken.token + ')" class="avancar" style="margin-top: .8vw;" >Salvar</button>\n                  <div>\n                </div>\n        </div>';
         $('.main').append(jh);
         if (atenuantesEditar.length == 0) {
             $('.expand .atenuan').remove();
         }
         if (agravantesEditar.length == 0) {
             $('.expand .agravan').remove();
         }
         $('.expand-background').fadeIn();
     });
 };
 const searchFunction = () => {
     var jo = $('input[type="number"]').val();
     if (currentMenu == 'manager') {
         $('.police').each(function () {
             var jp = $(this).attr('data-user');
             if (jp.indexOf(jo) != -1) {
                 $(this).show();
             } else {
                 $(this).hide();
             }
         });
     } else {
         if (currentMenu == 'registros') {
             $('.registro').each(function () {
                 var jq = $(this).attr('data-token');
                 if (jq.indexOf(jo) != -1) {
                     $(this).show();
                 } else {
                     $(this).hide();
                 }
             });
         }
     }
 };
 var order = false;
 const sortFunction = () => {
     order = !order;
     if (currentMenu == 'manager') {
         $('.cadastros').find('.police').sort(function (jr, js) {
             const jt = jr.dataset.user;
             const ju = js.dataset.user;
             if (order) {
                 return +jt - +ju;
             } else {
                 return +ju - +jt;
             }
         }).appendTo('.cadastros');
     } else {
         if (currentMenu == 'registros') {
             $('.registro-wrap').find('.registro').sort(function (jv, jw) {
                 const jx = jv.dataset.token;
                 const jy = jw.dataset.token;
                 if (order) {
                     return +jx - +jy;
                 } else {
                     return +jy - +jx;
                 }
             }).appendTo('.registro-wrap');
         }
     }
     if (order) {
         $('.sort svg').replaceWith('<svg style="fill: white;" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M320 192c0 17.69 14.31 31.1 32 31.1L416 224c17.69 0 32-14.31 32-32s-14.31-32-32-32V63.98c0-11.19-5.844-21.53-15.38-27.34c-9.531-5.781-21.41-6.188-31.34-1.062l-32 16.59c-15.69 8.125-21.81 27.44-13.69 43.13C329.3 106.3 340.4 112.6 352 112.6V160C334.3 160 320 174.3 320 192zM392 255.6c-48.6 0-88 39.4-88 88c0 36.44 22.15 67.7 53.71 81.07l-7.682 8.004c-10.72 11.16-10.34 28.88 .8125 39.56C356.3 477.4 363.3 480 370.2 480c7.344 0 14.72-2.875 20.19-8.625c69.61-72.53 89.6-85.39 89.6-127.8C480 294.1 440.6 255.6 392 255.6zM392 367.6c-13.23 0-24-10.77-24-24s10.77-24 24-24s24 10.77 24 24S405.2 367.6 392 367.6zM216 320.3c-8.672 0-17.3 3.5-23.61 10.38L160 366.1V64.03C160 46.33 145.7 32 128 32S96 46.33 96 64.03v302L63.6 330.7c-11.95-13.01-32.2-13.91-45.22-1.969c-13.03 11.95-13.9 32.22-1.969 45.27l87.1 96.09c12.12 13.26 35.06 13.26 47.19 0l87.1-96.09c11.94-13.05 11.06-33.31-1.969-45.27C231.5 323.1 223.7 320.3 216 320.3z"/></svg>');
     } else {
         $('.sort svg').replaceWith('<svg style="fill: white;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M320 192c0 17.69 14.31 31.1 32 31.1L416 224c17.69 0 32-14.31 32-32s-14.31-32-32-32V63.98c0-11.19-5.844-21.53-15.38-27.34c-9.531-5.781-21.41-6.188-31.34-1.062l-32 16.59c-15.69 8.125-21.81 27.44-13.69 43.13C329.3 106.3 340.4 112.6 352 112.6V160C334.3 160 320 174.3 320 192zM392 255.6c-48.6 0-88 39.4-88 88c0 36.44 22.15 67.7 53.71 81.07l-7.682 8.004c-10.72 11.16-10.34 28.88 .8125 39.56C356.3 477.4 363.3 480 370.2 480c7.344 0 14.72-2.875 20.19-8.625c69.61-72.53 89.6-85.39 89.6-127.8C480 294.1 440.6 255.6 392 255.6zM392 367.6c-13.23 0-24-10.77-24-24s10.77-24 24-24s24 10.77 24 24S405.2 367.6 392 367.6zM39.99 191.7c8.672 0 17.3-3.5 23.61-10.38L96 145.9v302c0 17.7 14.33 32.03 31.1 32.03s32-14.33 32-32.03V145.9L192.4 181.3C204.4 194.3 224.6 195.2 237.6 183.3c13.03-11.95 13.9-32.22 1.969-45.27L151.6 41.94c-12.12-13.26-35.06-13.26-47.19 0l-87.1 96.09C4.475 151.1 5.35 171.3 18.38 183.3C24.52 188.9 32.27 191.7 39.99 191.7z"/></svg>');
     }
 };
 const updateRegistros = () => {
     startLoading();
     $.post('https://cc_mdt/requestRegistros', JSON.stringify({}), jz => {
         stopLoading();
         let ka = '<nav id="sidebar" class="sidebar-wrapper">\n                <div class="sidebar-header">\n                   <div class="user-pic">\n                      <img\n                         src="' + profilePadrao + '">\n                      <div class="user-pic-hover">\n                         <svg onclick="tirarFoto()" xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-e</title><circle cx="256" cy="272" r="64"/><path d="M432,144H373c-3,0-6.72-1.94-9.62-5L337.44,98.06a15.52,15.52,0,0,0-1.37-1.85C327.11,85.76,315,80,302,80H210c-13,0-25.11,5.76-34.07,16.21a15.52,15.52,0,0,0-1.37,1.85l-25.94,41c-2.22,2.42-5.34,5-8.62,5v-8a16,16,0,0,0-16-16H100a16,16,0,0,0-16,16v8H80a48.05,48.05,0,0,0-48,48V384a48.05,48.05,0,0,0,48,48H432a48.05,48.05,0,0,0,48-48V192A48.05,48.05,0,0,0,432,144ZM256,368a96,96,0,1,1,96-96A96.11,96.11,0,0,1,256,368Z"/></svg>\n                      </div>\n                   </div>\n                   <div class="user-info">\n                      <span class="user-name">' + nome + '\n                         <strong>' + sobrenome + '</strong>\n                      </span>\n                      <span class="user-role">' + patente + '</span>\n                      <span class="user-status">\n                         <div class="ball" id="' + servico + '"></div>\n                         <span>' + servicoNomes[servico] + '</span>\n                      </span>\n                   </div>\n                </div>\n                <div class="sidebar-menu">\n                   <div class="menu-header">Geral</div>\n                   <a href="#" id="dashboard" onclick="carregarMenu(\'dashboard\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-i</title><path d="M204,240H68a36,36,0,0,1-36-36V68A36,36,0,0,1,68,32H204a36,36,0,0,1,36,36V204A36,36,0,0,1,204,240Z"/><path d="M444,240H308a36,36,0,0,1-36-36V68a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V204A36,36,0,0,1,444,240Z"/><path d="M204,480H68a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H204a36,36,0,0,1,36,36V444A36,36,0,0,1,204,480Z"/><path d="M444,480H308a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V444A36,36,0,0,1,444,480Z"/></svg>\n                      <span>Dashboard</span>\n                   </a>\n                   <a href="#" id="dados" onclick="carregarMenu(\'dados\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                      <span>Dados</span>\n                   </a>\n                   <a href="#" id="boletim" onclick="carregarMenu(\'boletim\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-k</title><path d="M428,224H288a48,48,0,0,1-48-48V36a4,4,0,0,0-4-4H144A64,64,0,0,0,80,96V416a64,64,0,0,0,64,64H368a64,64,0,0,0,64-64V228A4,4,0,0,0,428,224ZM336,384H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Zm0-80H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Z"/><path d="M419.22,188.59,275.41,44.78A2,2,0,0,0,272,46.19V176a16,16,0,0,0,16,16H417.81A2,2,0,0,0,419.22,188.59Z"/></svg>\n                      <span>Boletim de Ocorrência</span>\n                   </a>\n                   <a href="#" id="registros" onclick="carregarMenu(\'registros\');" class="active">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-n</title><path d="M496,152a56,56,0,0,0-56-56H220.11a23.89,23.89,0,0,1-13.31-4L179,73.41A55.77,55.77,0,0,0,147.89,64H72a56,56,0,0,0-56,56v48a8,8,0,0,0,8,8H488a8,8,0,0,0,8-8Z"/><path d="M16,392a56,56,0,0,0,56,56H440a56,56,0,0,0,56-56V216a8,8,0,0,0-8-8H24a8,8,0,0,0-8,8Z"/></svg>\n                      <span>Registros</span>\n                   </a>\n                   \n\n                   </a>\n                </div>\n             </nav>\n             <!-- Conteudo -->\n             <div class="content">\n                <div class="cnt-info">\n                   <div>\n                      <h3 class="cnt-header">Registros</h3>\n                      <div class="cnt-desc">Verifique os últimos boletins de ocorrências policiais;</div>\n                   </div>\n                   <div class="logo">\n                      <img\n                         src="' + logo + '">\n                   </div>\n                </div>\n                <div class="cnt umb maxh">\n                  <div class="boletins">\n                  <div style="position: relative; display: flex; gap: .6vw; height: 1.6vw; margin-bottom: .8vw;">\n                     <div style="position: relative; flex-grow: 1;">\n                        <input onKeyup="searchFunction()" style="width: 100%; height: 100%; font-size: .7vw;" id="dados-search-input" type="number" placeholder="Busca por nº do boletim;"></input>\n                        <svg style="pointer-events: none;" class="search-icon" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                     </div>\n                     <div onClick="sortFunction()" class="sort">\n                        <svg style="fill: white;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M320 192c0 17.69 14.31 31.1 32 31.1L416 224c17.69 0 32-14.31 32-32s-14.31-32-32-32V63.98c0-11.19-5.844-21.53-15.38-27.34c-9.531-5.781-21.41-6.188-31.34-1.062l-32 16.59c-15.69 8.125-21.81 27.44-13.69 43.13C329.3 106.3 340.4 112.6 352 112.6V160C334.3 160 320 174.3 320 192zM392 255.6c-48.6 0-88 39.4-88 88c0 36.44 22.15 67.7 53.71 81.07l-7.682 8.004c-10.72 11.16-10.34 28.88 .8125 39.56C356.3 477.4 363.3 480 370.2 480c7.344 0 14.72-2.875 20.19-8.625c69.61-72.53 89.6-85.39 89.6-127.8C480 294.1 440.6 255.6 392 255.6zM392 367.6c-13.23 0-24-10.77-24-24s10.77-24 24-24s24 10.77 24 24S405.2 367.6 392 367.6zM39.99 191.7c8.672 0 17.3-3.5 23.61-10.38L96 145.9v302c0 17.7 14.33 32.03 31.1 32.03s32-14.33 32-32.03V145.9L192.4 181.3C204.4 194.3 224.6 195.2 237.6 183.3c13.03-11.95 13.9-32.22 1.969-45.27L151.6 41.94c-12.12-13.26-35.06-13.26-47.19 0l-87.1 96.09C4.475 151.1 5.35 171.3 18.38 183.3C24.52 188.9 32.27 191.7 39.99 191.7z"/></svg>\n                     </div>\n                  </div>\n                  <div style="padding-right: .4vw; flex: 1;" class="registro-wrap overflow">' + jz.registros.map(kb => '\n                  <div class="registro ' + kb.status.toLowerCase() + '" data-token="' + kb.token + '" >\n                     <div>\n                        <div class="registro-title">Nº ' + kb.token + '<span> - ' + kb.timestamp + '</span></div>\n                        <svg class="status" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M352 192H384C419.3 192 448 220.7 448 256V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V256C0 220.7 28.65 192 64 192H288V144C288 64.47 352.5 0 432 0C511.5 0 576 64.47 576 144V192C576 209.7 561.7 224 544 224C526.3 224 512 209.7 512 192V144C512 99.82 476.2 64 432 64C387.8 64 352 99.82 352 144V192z"/></svg>\n                     </div>\n\n                     <div style="flex-grow: 1;">\n                        <div class="policial">\n                           <svg viewBox="0 0 14 14" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M12.8327 2.33341L11.666 1.16675C10.9952 1.54008 10.1493 1.75008 9.33268 1.75008C8.51602 1.75008 7.66435 1.53425 6.99935 1.16675C6.33435 1.53425 5.48268 1.75008 4.66602 1.75008C3.84935 1.75008 3.00352 1.54008 2.33268 1.16675L1.16602 2.33341C1.16602 2.33341 2.33268 3.50008 2.33268 4.66675C2.33268 5.83342 1.16602 8.16675 1.16602 9.33342C1.16602 11.6667 6.99935 12.8334 6.99935 12.8334C6.99935 12.8334 12.8327 11.6667 12.8327 9.33342C12.8327 8.16675 11.666 5.83342 11.666 4.66675C11.666 3.50008 12.8327 2.33341 12.8327 2.33341ZM8.77852 9.59592L6.98185 8.51092L5.19102 9.59592L5.66935 7.55425L4.08268 6.18925L6.17102 6.00842L6.98185 4.08342L7.79852 6.00258L9.88685 6.18342L8.30018 7.54841L8.77852 9.59592Z" fill="white"/></svg>                           \n                           <div>' + kb.identity + '<span> #' + kb.user_id + '</span></div>\n                        </div>\n                        \n                        <div class="pessoa">\n                           <svg style="fill: white;"xmlns="https://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Person</title><path d="M332.64 64.58C313.18 43.57 286 32 256 32c-30.16 0-57.43 11.5-76.8 32.38-19.58 21.11-29.12 49.8-26.88 80.78C156.76 206.28 203.27 256 256 256s99.16-49.71 103.67-110.82c2.27-30.7-7.33-59.33-27.03-80.6zM432 480H80a31 31 0 01-24.2-11.13c-6.5-7.77-9.12-18.38-7.18-29.11C57.06 392.94 83.4 353.61 124.8 326c36.78-24.51 83.37-38 131.2-38s94.42 13.5 131.2 38c41.4 27.6 67.74 66.93 76.18 113.75 1.94 10.73-.68 21.34-7.18 29.11A31 31 0 01432 480z"/></svg>\n                           <div>' + kb.nidentity + '<span> #' + kb.nuser_id + '</span></div>\n                        </div>\n                     </div>\n\n                     <div class="registro-buttons">\n                        <button style="flex: 1;" onClick="finalizarBoletim(' + kb.token + ', ' + kb.nuser_id + ', ' + kb.tempo + ', ' + kb.multa + ', ' + kb.fianca + ')" id=\'finalizar\' class="avancar">Finalizar</button>\n                        <button style="flex: 1;" onClick="expandirBoletim(' + kb.token + ')" class="opcao-botao avancar">Expandir</button>\n                        <button style="flex: 1;" onClick="deleteContainer(' + kb.token + ')" class="restaurar">Deletar</button>\n                     </div>\n                  </div>\n                  ').join('') + '</div>\n                 </div>\n               </div>\n             </div>';
         $('.main').html(ka);
         $('.registro.fechado .status').replaceWith('<svg class="status" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M80 192V144C80 64.47 144.5 0 224 0C303.5 0 368 64.47 368 144V192H384C419.3 192 448 220.7 448 256V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V256C0 220.7 28.65 192 64 192H80zM144 192H304V144C304 99.82 268.2 64 224 64C179.8 64 144 99.82 144 144V192z"/></svg>');
     });
 };
 const visualizarRegistro = () => {
     let kc = '\n            <div class="expand-background" onClick="closeExpand(this)" style="display:none;">\n                  <div class="expand">\n                     <h3>Boletim Nº 1</h3>\n                     <div class="cnt umb maxh" style="margin-top: 0;">\n                        <div class="codigo-penal" style="background: none;">\n                           <div class="resumo">\n                              <div class="boletim-img" style="margin-bottom: 1vw;">\n                                 <img id="boletim-foto" src="https://media.discordapp.net/attachments/776536471195877376/930135915014262864/unknown.png?ex=65ef3113&is=65dcbc13&hm=5538b2592de2b028256b67280c879da7112f4304aa1bd119783315beead9e13c&=&format=webp&quality=lossless">\n                                 <img id="cadeia" src="https://i.ibb.co/tsQKx79/unknown.png">\n                              </div>\n                              <div class="resumo-dados">\n                                 <div>\n                                    INDIVÍDUO<span>466 - Alberto Silva</span>\n                                 </div>\n                                 <div>\n                                    PENA<span>12 meses</span>\n                                 </div>\n                                 <div>\n                                    MULTA<span>$3000,00</span>\n                                 </div>\n                              </div>\n                           </div>\n                        </div>\n                     </div>\n                  </div>\n            </div>';
     $('.main').append(kc);
     $('.expand-background').fadeIn();
 };
 const waypointOfficer = (kd, ke) => {
     if (ke == 'offline') {
         errorNotify('O oficial se encontra fora da cidade!');
         return;
     }
     if (kd == passaporte) {
         errorNotify('Você não pode se marcar!');
         return;
     }
     $.post('https://cc_mdt/setWaypointOfficer', JSON.stringify({ user: kd }), kf => {
         if (kf == 'ok') {
             sucessNotify('Oficial marcado com sucesso!');
         } else {
             errorNotify('O oficial se encontra fora da cidade!');
         }
     });
 };
 const deleteContainerCadastro = (kg, kh) => {
     let ki = '<div class="alert-background" onClick="closeAlert(this)" style="display:none;">\n                <div class="alert">\n                        <h3 id="registrar" style="font-size: 1.1vw;" class="signup">Deseja deletar o cadastro?</h3>\n                        <p id="registrar" style="color: #B9BBBE; font-size: .9vw; text-align: justify;" class="signup">Essa ação é <b>irreversível</b>! Todos os dados vinculados ao oficial <b>' + kg + '</b> de passaporte <b>' + kh + '</b> serão apagados.</p>\n                        <button id="reset-senha" class="button red-btn">\n                                <span class="handle">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                        <svg class="icon" viewBox="0 0 20 20">\n                                                <polyline points="9 13 12 10 8 6"></polyline>\n                                        </svg>\n                                </span>\n                                <span class="default">Deletar</span>\n                                <span class="progress">Confirmar</span>\n                                <span class="success">Pronto</span>\n                                <span class="drop">\n                                        <svg class="btn-background" viewBox="0 0 40 40">\n                                                <path\n                                                        d="M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z">\n                                                </path>\n                                        </svg>\n                                </span>\n                        </button>\n                </div>\n        </div>';
     $('.main').append(ki);
     $('.alert-background').fadeIn();
     updateDragDeletarCadastro(kh);
 };
 const updateDragDeletarCadastro = kj => {
     let kk = document.querySelector('.handle');
     let kl = document.querySelector('.background path');
     let km = document.querySelector('.drop');
     let kn = document.querySelector('.background path');
     let ko = gsap.to(kl, {
         paused: true,
         morphSVG: 'M5 16C5 9.92487 9.92487 5 16 5H24C30.0751 5 34 9.92487 36 16C36 16 37 18.4379 37 20C37 21.5621 36 24 36 24C34 30.0751 30.0751 35 24 35H16C9.92487 35 5 30.0751 5 24C5 24 5 21.5621 5 20C5 18.4379 5 16 5 16Z'
     });
     let kp = gsap.to(kn, {
         paused: true,
         morphSVG: 'M4 16C6 9.92487 9.92487 5 16 5H24C30.0751 5 35 9.92487 35 16C35 16 35 18.4379 35 20C35 21.5621 35 24 35 24C35 30.0751 30.0751 35 24 35H16C9.92487 35 6 30.0751 4 24C4 24 3 21.5621 3 20C3 18.4379 4 16 4 16Z'
     });
     gsap.set(kk, { x: 0 });
     $('.handle').draggable({
         cancel: false,
         axis: 'x',
         revert: 'invalid',
         containment: 'parent'
     });
     let kq = document.querySelector('#reset-senha');
     $('.drop').droppable({
         hoverClass: 'hoverControl',
         drop: function (kr, ks) {
             gsap.to(kq, {
                 '--background-opacity': 0,
                 '--progress-opacity': 0,
                 '--handle-blur': 0,
                 '--icon-y': 0.5,
                 duration: 0.3,
                 delay: 0.2
             });
             gsap.to(kq, {
                 '--icon-rotate': 87,
                 '--icon-offset': 15.5,
                 '--icon-scale': 1.5,
                 duration: 0.25,
                 delay: 0.3
             });
             gsap.to(kq, {
                 '--success-opacity': 1,
                 '--success-scale': 1,
                 '--success-x': 8,
                 duration: 0.2,
                 delay: 0.8
             });
             $.post('https://cc_mdt/deletarCadastro', JSON.stringify({ user: kj }), kt => {
                 if (kt === 'ok') {
                     $('.police[data-user=' + kj + ']').remove();
                     sucessNotify('Dados apagados com sucesso!');
                 } else {
                     errorNotify('Ops, algo deu errado!');
                 }
             });
             setTimeout(function () {
                 $('.alert-background').fadeOut();
                 setTimeout(function () {
                     $('.alert-background').remove();
                 }, 500);
             }, 1500);
         }
     });
     kq.addEventListener('click', ku => {
         if (kq.classList.contains('active')) {
             return;
         }
         kq.classList.add('active');
         gsap.to(kq, {
             '--handle-drop-opacity': 1,
             '--default-opacity': 0,
             '--default-scale': 0.8,
             duration: 0.2
         });
         gsap.to(kq, {
             '--progress-opacity': 0.5,
             '--progress-scale': 1,
             duration: 0.2,
             delay: 0.15
         });
     });
 };
 const updateManager = () => {
     startLoading();
     $.post('https://cc_mdt/requestManager', JSON.stringify({}), kv => {
         stopLoading();
         let kw = '<nav id="sidebar" class="sidebar-wrapper">\n                <div class="sidebar-header">\n                   <div class="user-pic">\n                      <img\n                         src="' + profilePadrao + '">\n                      <div class="user-pic-hover">\n                         <svg onclick="tirarFoto()" xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-e</title><circle cx="256" cy="272" r="64"/><path d="M432,144H373c-3,0-6.72-1.94-9.62-5L337.44,98.06a15.52,15.52,0,0,0-1.37-1.85C327.11,85.76,315,80,302,80H210c-13,0-25.11,5.76-34.07,16.21a15.52,15.52,0,0,0-1.37,1.85l-25.94,41c-2.22,2.42-5.34,5-8.62,5v-8a16,16,0,0,0-16-16H100a16,16,0,0,0-16,16v8H80a48.05,48.05,0,0,0-48,48V384a48.05,48.05,0,0,0,48,48H432a48.05,48.05,0,0,0,48-48V192A48.05,48.05,0,0,0,432,144ZM256,368a96,96,0,1,1,96-96A96.11,96.11,0,0,1,256,368Z"/></svg>\n                      </div>\n                   </div>\n                   <div class="user-info">\n                      <span class="user-name">' + nome + '\n                         <strong>' + sobrenome + '</strong>\n                      </span>\n                      <span class="user-role">' + patente + '</span>\n                      <span class="user-status">\n                         <div class="ball" id="' + servico + '"></div>\n                         <span>' + servicoNomes[servico] + '</span>\n                      </span>\n                   </div>\n                </div>\n                <div class="sidebar-menu">\n                   <div class="menu-header">Geral</div>\n                   <a href="#" id="dashboard" onclick="carregarMenu(\'dashboard\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-i</title><path d="M204,240H68a36,36,0,0,1-36-36V68A36,36,0,0,1,68,32H204a36,36,0,0,1,36,36V204A36,36,0,0,1,204,240Z"/><path d="M444,240H308a36,36,0,0,1-36-36V68a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V204A36,36,0,0,1,444,240Z"/><path d="M204,480H68a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H204a36,36,0,0,1,36,36V444A36,36,0,0,1,204,480Z"/><path d="M444,480H308a36,36,0,0,1-36-36V308a36,36,0,0,1,36-36H444a36,36,0,0,1,36,36V444A36,36,0,0,1,444,480Z"/></svg>\n                      <span>Dashboard</span>\n                   </a>\n                   <a href="#" id="dados" onclick="carregarMenu(\'dados\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                      <span>Dados</span>\n                   </a>\n                   <a href="#" id="boletim" onclick="carregarMenu(\'boletim\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-k</title><path d="M428,224H288a48,48,0,0,1-48-48V36a4,4,0,0,0-4-4H144A64,64,0,0,0,80,96V416a64,64,0,0,0,64,64H368a64,64,0,0,0,64-64V228A4,4,0,0,0,428,224ZM336,384H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Zm0-80H176a16,16,0,0,1,0-32H336a16,16,0,0,1,0,32Z"/><path d="M419.22,188.59,275.41,44.78A2,2,0,0,0,272,46.19V176a16,16,0,0,0,16,16H417.81A2,2,0,0,0,419.22,188.59Z"/></svg>\n                      <span>Boletim de Ocorrência</span>\n                   </a>\n                   <a href="#" id="registros" onclick="carregarMenu(\'registros\');">\n                      <svg xmlns="https://www.w3.org/2000/svg" fill="#FFF" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-n</title><path d="M496,152a56,56,0,0,0-56-56H220.11a23.89,23.89,0,0,1-13.31-4L179,73.41A55.77,55.77,0,0,0,147.89,64H72a56,56,0,0,0-56,56v48a8,8,0,0,0,8,8H488a8,8,0,0,0,8-8Z"/><path d="M16,392a56,56,0,0,0,56,56H440a56,56,0,0,0,56-56V216a8,8,0,0,0-8-8H24a8,8,0,0,0-8,8Z"/></svg>\n                      <span>Registros</span>\n                   </a>\n                   \n                   </a>\n                </div>\n             </nav>\n             <!-- Conteudo -->\n             <div class="content">\n                <div class="cnt-info">\n                   <div>\n                      \n                      <div class="cnt-desc">Analise individualmente todos os oficiais cadastrados;</div>\n                   </div>\n                   <div class="logo">\n                      <img\n                         src="' + logo + '">\n                   </div>\n                </div>\n\n                <div class="cnt umb maxh">\n                  <div class="boletins">\n                  <div style="position: relative; display: flex; gap: .6vw; height: 1.6vw; margin-bottom: .8vw;">\n                     <div style="position: relative; flex-grow: 1;">\n                        <input onKeyup="searchFunction()" style="width: 100%; height: 100%; font-size: .7vw;" id="dados-search-input" type="number" placeholder="Busca por passaporte do oficial;"></input>\n                        <svg style="pointer-events: none;" class="search-icon" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>ionicons-v5-f</title><path d="M456.69,421.39,362.6,327.3a173.81,173.81,0,0,0,34.84-104.58C397.44,126.38,319.06,48,222.72,48S48,126.38,48,222.72s78.38,174.72,174.72,174.72A173.81,173.81,0,0,0,327.3,362.6l94.09,94.09a25,25,0,0,0,35.3-35.3ZM97.92,222.72a124.8,124.8,0,1,1,124.8,124.8A124.95,124.95,0,0,1,97.92,222.72Z"/></svg>\n                     </div>\n                     <div onClick="sortFunction()" class="sort">\n                        <svg style="fill: white;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M320 192c0 17.69 14.31 31.1 32 31.1L416 224c17.69 0 32-14.31 32-32s-14.31-32-32-32V63.98c0-11.19-5.844-21.53-15.38-27.34c-9.531-5.781-21.41-6.188-31.34-1.062l-32 16.59c-15.69 8.125-21.81 27.44-13.69 43.13C329.3 106.3 340.4 112.6 352 112.6V160C334.3 160 320 174.3 320 192zM392 255.6c-48.6 0-88 39.4-88 88c0 36.44 22.15 67.7 53.71 81.07l-7.682 8.004c-10.72 11.16-10.34 28.88 .8125 39.56C356.3 477.4 363.3 480 370.2 480c7.344 0 14.72-2.875 20.19-8.625c69.61-72.53 89.6-85.39 89.6-127.8C480 294.1 440.6 255.6 392 255.6zM392 367.6c-13.23 0-24-10.77-24-24s10.77-24 24-24s24 10.77 24 24S405.2 367.6 392 367.6zM39.99 191.7c8.672 0 17.3-3.5 23.61-10.38L96 145.9v302c0 17.7 14.33 32.03 31.1 32.03s32-14.33 32-32.03V145.9L192.4 181.3C204.4 194.3 224.6 195.2 237.6 183.3c13.03-11.95 13.9-32.22 1.969-45.27L151.6 41.94c-12.12-13.26-35.06-13.26-47.19 0l-87.1 96.09C4.475 151.1 5.35 171.3 18.38 183.3C24.52 188.9 32.27 191.7 39.99 191.7z"/></svg>   \n                     </div>\n                  </div>\n                  <div style="padding-right: .4vw;" class="cadastros overflow">' + kv.dados.map(kx => '\n                     <div class="police" data-user="' + kx.user_id + '">\n                        <div style="width: 2vw;" class="msg-profile">\n                           <img class="img-profile" data-userid="' + kx.user_id + '" src="' + kx.image + '">\n                           <div class="circle-stats" id="' + kx.status + '"></div>\n                        </div>\n                        <div class="msg-text">\n                           <span style="font-size: .8vw; font-weight: bold;" class="cadastro-police">' + kx.identity + ' <span style="font-weight: 400; color: #B9BBBE;">#' + kx.user_id + '</span></span>\n                           <span class="msg-data">' + servicoNomes[kx.status] + '</span>\n                        </div>\n                        <div class="cadastro-acoes">\n                           <svg onClick="waypointOfficer(' + kx.user_id + ', \'' + kx.status + '\')" xmlns="https://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512">\n                              <title>Locate</title>\n                              <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M256 96V56M256 456v-40M256 112a144 144 0 10144 144 144 144 0 00-144-144zM416 256h40M56 256h40" />\n                           </svg>\n                           <svg onClick="deleteContainerCadastro(\'' + kx.identity + '\', ' + kx.user_id + ')" xmlns="https://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512">\n                              <title>Trash</title>\n                              <path d="M296 64h-80a7.91 7.91 0 00-8 8v24h96V72a7.91 7.91 0 00-8-8z" fill="none"/><path d="M432 96h-96V72a40 40 0 00-40-40h-80a40 40 0 00-40 40v24H80a16 16 0 000 32h17l19 304.92c1.42 26.85 22 47.08 48 47.08h184c26.13 0 46.3-19.78 48-47l19-305h17a16 16 0 000-32zM192.57 416H192a16 16 0 01-16-15.43l-8-224a16 16 0 1132-1.14l8 224A16 16 0 01192.57 416zM272 400a16 16 0 01-32 0V176a16 16 0 0132 0zm32-304h-96V72a7.91 7.91 0 018-8h80a7.91 7.91 0 018 8zm32 304.57A16 16 0 01320 416h-.58A16 16 0 01304 399.43l8-224a16 16 0 1132 1.14z"/>\n                           </svg>\n                        </div>\n                     </div>\n                     ').join('') + '</div>\n                 </div>\n               </div>\n             </div>';
         $('.main').html(kw);
     });
 };