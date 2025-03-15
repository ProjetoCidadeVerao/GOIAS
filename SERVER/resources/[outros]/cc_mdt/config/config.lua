--[ VARIAVEL ]----------------------------------------------------------------------------------------------------------------

Config = {}

--[ LICENÇA ]--------------------------------------------------------------------------------------------------------------------

Config.licenca = '727674669280395286-cc_mdt-txgfi' -- Licença do script; Não lembra? Envie no privado de nosso bot Carioca Auth, o comando: .subinfo !

--[ CONFIGURAÇÃO ]----------------------------------------------------------------------------------------------------------------
--[ LOGO ]--------------------------------------------------------------------------------------------------------------------

Config.logo = 'http://89.213.5.115/verao_images/niteroi/logop.png'

--[ COMANDO ]--------------------------------------------------------------------------------------------------------------------

Config.comandoAbrir = 'tablet' -- Comando para abrir o Tablet;

--[ PERMISSOES ]--------------------------------------------------------------------------------------------------------------------

Config.permissaoPolicial = 'perm.policia' -- Permissão para abrir o MDT;

Config.permissaoAdministrativa = 'admin.permissao' -- Permissão que consiguirá acessar a pagina Gerenciar Oficiais;

--[ PRENDER SOMENTE DENTRO DE ZONA ]-------------------------------------------------------------------------------------------------

Config.enablePrenderEmZona = false -- Somente será possível finalizar um boletim dentro de uma zona;

Config.coordenadaZona = vector3(445.06, -986.91, 30.68) -- Coodernada da zona;

Config.raioZona = 20 -- Raio da zona;

--[ PATENTE ]--------------------------------------------------------------------------------------------------------------------

Config.gtypePatente = 'hie' -- Gtype de promoções;

--[ MAPA ]--------------------------------------------------------------------------------------------------------------------

Config.tipoDeMapa = 'Mainmap'

--[ PERSONALIZAÇÃO ]--------------------------------------------------------------------------------------------------------------------

Config.carroCutScene = 'riot' -- Carro em que será spawnado, durante a Cut Scene da prisão;

Config.roupaDetento = { -- Roupa em que o prisioneiro será vestido; Após o fim de sua sentença, ela será retirada;
        [1885233650] = { -- Roupa Masculina;
             [1] = {0,0,2},
             [3] = {15,0,1},
             [4] = {5,2,1},
             [5] = {-1,0,1},
             [6] = {89,0,1},
             [7] = {-1,0,2},
             [8] = {15,0,1},
             [9] = {-1,0,2},
             [10] = {-1,0,2},
             [11] = {238,3,1}
        },
        [-1667301416] = { -- Roupa Femininas;
             [1] = {0,0,0},
             [3] = {15,0,1},
             [4] = {58,0,1},
             [5] = {0,0,0},
            [6] = {16,0,1},
            [7] = {0,0,0},
            [8] = {-1,0,1},
            [9] = {0,0,0},
            [10] = {0,0,0},
            [11] = {74,0,1}
        }
}

--[ AVANÇADO ]--------------------------------------------------------------------------------------------------------------------
--[ UPLOAD IMAGENS ]---------------------------------------------------------------------------------------------------------------------

Config.qualidadeDoUpload = 0.1 -- Qualidade de upload. Quanto mais baixo, mais rapido será, mas sua qualidade irá diminuir;

--[ PRENDER ]---------------------------------------------------------------------------------------------------------------------

Config.penaMaxima = 500 -- Pena maxima permitida;

--[ URL IMAGEM CARROS ]------------------------------------------------------------------------------------------------------------------

Config.urlImagemCarros = 'http://89.213.5.115/verao_images/exit_inventory/' -- URL em que seus carros ficam hospedados;

--[ CODIGO PENAL ]--------------------------------------------------------------------------------------------------------------

Config.codigoPenal = {
        ---------------[ CRIMES BÁSICOS ]---------------
        {
                ["descricao"] = "Assédio moral e físico",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Trajes poderes públicos",
                ["pena"] = 20,
                ["multa"] = 20000,
                ["fianca"] = 60000
        },
        {
                ["descricao"] = "Uso de Máscara",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Apologia ao crime",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 45000
        },
        {
                ["descricao"] = "Falso testemunho",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 45000
        },

        -------[ CRIMES 1 GRAU ]--------
        {
                ["descricao"] = "Resistencia a prisão",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 45000
        },
        {
                ["descricao"] = "Omissão de socorro",
                ["pena"] = 5,
                ["multa"] = 5000,
                ["fianca"] = 15000
        },
        {
                ["descricao"] = "Dano ao patrimônio",
                ["pena"] = 5,
                ["multa"] = 5000,
                ["fianca"] = 15000
        },
        {
                ["descricao"] = "Furto",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Obstrução de socorro",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
        },
        {
                ["descricao"] = "Agressão corporal culposa",
                ["pena"] = 20,
                ["multa"] = 20000,
                ["fianca"] = 60000
        },
        {
                ["descricao"] = "Agressão corporal culposa",
                ["pena"] = 40,
                ["multa"] = 40000,
                ["fianca"] = 120000
        },
        {
                ["descricao"] = "Injúria",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
        },
        {
                ["descricao"] = "Ameaça",
                ["pena"] = 35,
                ["multa"] = 35000,
                ["fianca"] = 105000
        },
        {
                ["descricao"] = "Incitação ao crime",
                ["pena"] = 20,
                ["multa"] = 20000,
                ["fianca"] = 120000
        },
        {
                ["descricao"] = "Fuga",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Roubo",
                ["pena"] = 20,
                ["multa"] = 20000,
                ["fianca"] = 60000
        },
        
        -------------------------[ CRIMES 2 GRAU ]---------------------------
        {
                ["descricao"] = "Desacato",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Extorção",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 45000
        },
        {
                ["descricao"] = "Falsidade Ideológica",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Calúnia",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Suborno",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 30000
        },
        {
                ["descricao"] = "Atentado ao pudor",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
        },
        {
                ["descricao"] = "Peturbação do Sossego",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
        },
        {
                ["descricao"] = "Furto/roubo de veículo",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
        },
        {
                ["descricao"] = "Abuso de Autoridade",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
        },

 --------[ CRIMES 3 GRAU ]----------
 {
        ["descricao"] = "Tentativa de Homicidio",
        ["pena"] = 45,
        ["multa"] = 45000,
        ["fianca"] = false
},
{
        ["descricao"] = "Homicidio Doloso", -- Descrição do crime;
        ["pena"] = 85, -- Pena do crime;
        ["multa"] = 85000, -- Multa do crime;
        ["fianca"] = false -- Fiança do crime; Caso for inafiançável, deve se colocar: false ;
},
{
        ["descricao"] = "Homicidio Culposo",
        ["pena"] = 50,
        ["multa"] = 50000,
        ["fianca"] = false
},
{
        ["descricao"] = "Latrocinio",
        ["pena"] = 110,
        ["multa"] = 120000,
        ["fianca"] = false
},
{
        ["descricao"] = "Sequestro",
        ["pena"] = 45,
        ["multa"] = 45000,
        ["fianca"] = false
},
{
        ["descricao"] = "Desobediência",
        ["pena"] = 15,
        ["multa"] = 15000,
        ["fianca"] = 45000
},

        ------------------------[ CRIMES 4 GRAU ]-------------------------

        {
                ["descricao"] = "Contrabando de Materiais restritos",
                ["pena"] = 10,
                ["multa"] = 10000,
                ["fianca"] = 10000
        },
        {
                ["descricao"] = "Porte de Drogas",
                ["pena"] = 5,
                ["multa"] = 5000,
                ["fianca"] = 15000
        },
        {
                ["descricao"] = "Porte de Dinheiro Sujo",
                ["pena"] = 5,
                ["multa"] = 5000,
                ["fianca"] = 15000
        },
        {
                ["descricao"] = "Porte Lockpick/Algema/Capuz/Pendrive",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 45000
        },
{
                ["descricao"] = "Portar arma sem o devido porte",
                ["pena"] = 100,
                ["multa"] = 100000,
                ["fianca"] = 200000
},
{
                ["descricao"] = "Porte de munição",
                ["pena"] = 100,
                ["multa"] = 100000,
                ["fianca"] = 200000
 },
 {
                ["descricao"] = "Mal uso do porte",
                ["pena"] = 30,
                ["multa"] = 30000,
                ["fianca"] = 90000
}
}

--[ ATENUANTES ]--------------------------------------------------------------------------------------------------------------
    
Config.atenuantesPenal = {
        {
                ["descricao"] = "Réu Primário", -- Descrição do atenuante;
                ["porcentagem"] = 40 -- Porcentagem que será reduzida do crime;
        },
        {
                ["descricao"] = "Presença de um Advogado;",
                ["porcentagem"] = 10
        },
        {
                ["descricao"] = "Coloboração com a prisão;",
                ["porcentagem"] = 10
        },
        {
                ["descricao"] = "Colaboração com a investigação;",
                ["porcentagem"] = 30
        }
}

--[ AGRAVANTES ]--------------------------------------------------------------------------------------------------------------
    
Config.agravantesPenal = {
        {
                ["descricao"] = "Resistência a prisão;", -- Descrição do agravante;
                ["porcentagem"] = 30 -- Porcentagem que será aumentada do crime;
        },
        {
                ["descricao"] = "Criminoso reincidente;",
                ["porcentagem"] = 20
        }
}