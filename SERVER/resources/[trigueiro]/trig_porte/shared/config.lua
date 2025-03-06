Notify = {
    ["sucesso"] = 'sucesso',
    ["aviso"] = 'aviso',
    ["negado"] = 'negado',
}

Config = {

    Notify = {
        ["sucesso"] = 'sucesso',
        ["aviso"] = 'aviso',
        ["negado"] = 'negado',
    },

    ['LicenseChecker'] = {
        Command = 'porte',
        
        Permissions = {
            'admin.permissao',
            'perm.policia',
        }
    },

    ['Theoretical'] = {
        Start = vector3(12.46003, -1105.832, 29.7970), -- Coordenada onde você começa o teste teórico
        
        NPC = { -- Informações de onde o NPC estará
            Coords = vector3(12.0382, -1106.93, 29.797),
            Heading = 332.94,
            Model = `a_m_y_gay_02`
        },

        Price = 10, -- Preço para tirar porte de armas
    
        Test = { 
            -- Perguntas e respostas, lembrando o array começa no 0
            -- {"AK-47", "M4A4", "Colt M1911", "Vesper"}
            --     0       1           2           3
            {
                question = "Qual dessas é uma pistola?",
                answers = {"AK-47", "M4A4", "Colt M1911", "Vesper"},
                rightAnswer = 2,
            },

            {
                question = "Qual dessas é conhecido como 'Canhão de Mão'?",
                answers = {"Colt M1911", "Desert Eagle", "Beretta"},
                rightAnswer = 1
            },
        },

        Messages = {
            -- Cada mensagem [chave] indica a situação do jogador e o texto que será exibido
            -- ~Time~ indica quanto tempo o texto ficará na tela em segundos
            ['theoretical not concluded'] = {
                {Text = 'Olá, tudo bem? Sou Thiago e vou te ajudar a tirar seu porte de armas.', Time = 5},
                {Text = 'Você deverá fazer uma prova teórica e após isso, realizar a prática.', Time = 3},
                {Text = 'Caso passe no teste teórica, você deverá falar com nosso instrutor, ali do outro lado da sala.', Time = 2},
                {Text = 'Vamos começar?', Time = 1},
            },

            ['practical not concluded'] = {
                {Text = 'Parabéns, você já foi admitido no teste teórico.', Time = 5},
                {Text = 'Prossiga para próximo fase prática.', Time = 5}
            },
            
            ['active'] = {
                {Text = 'Olá, parece que você já foi admitido em todos os testes.', Time = 10}
            },

            ['revoked'] = {
                {Text = 'Olá, parece que sua licença foi revogada.', Time = 10}
            },

            ['expired'] = {
                {Text = 'Olá, sua liçensa precisa ser renovada.', Time = 7},
                {Text = 'Você deverá fazer uma prova teórica e após isso, realizar a prática.', Time = 3},
                {Text = 'Caso passe no teste teórica, você deverá falar com nosso instrutor, ali do outro lado da sala.', Time = 2},
                {Text = 'Vamos começar?', Time = 1}
            },
        }
    },

    ['Practical'] = {
        Start = vector3(9.36, -1097.940, 29.797), -- Local onde irá iniciar o teste prático

        ShootingRange = {
            Entry = vector4(13.494, -1097.096, 29.834, 338.132),
            Exit = vector4(7.239, -1098.9144, 29.7970, 161.258)
        },
        
        MinimumHits = 3, -- Número mínimo de acertos para passar no teste
        
        NPC = { -- Informações de onde o NPC estará e o modelo
            Coords = vector3(9.303, -1098.447, 29.797),
            Heading = 344.03,
            Model = `s_m_m_chemsec_01`
        },
        

        Messages = {
            ['start test'] = {
                {Text = 'Fala parceiro, aqui é o Malcon, vou te passar todas instruções.', Time = 3},
                {Text = 'Quando começar a prova, você deverá falar PISTA QUENTE.', Time = 3},
                {Text = 'Se ameaçar em fazer movimento errado, você PERDEU!', Time = 3},
                {Text = 'Vamos começar?', Time = 3},
            },
            
            ['concluded'] = {
                {Text = 'Parabéns sua seu porte de arma já está válido!', Time = 3},
            },

            ['quit'] = {
                {Text = 'Volte quando estiver pronto...', Time = 3},
            },
        }
    }
}
