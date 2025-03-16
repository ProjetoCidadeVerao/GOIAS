Config = {
    NameEvent = "vrp:ToogleLoginMenu", -- NOME DO EVENTO
    EventBack = "ToogleBackCharacter", -- EVENTO PARA RETORNAR PRA CRIACAO
    
    Title = "<p> BEM-VINDO A </p> <b>Goias Roleplay</b>",
    

    SpawnsLocs = {
        { -- Começo de uma localização
            Name = 'Delegacia', -- Nome
            Description = 'O local mais Seguro da Cidade, Bora lá?,', -- Descrição
            Image = 'https://media.discordapp.net/attachments/712813090952970344/1035231435826667571/pier.png', -- Nome da Imagem
            Spawn = vector3(-1680.83,-746.49,10.24), -- Coordenadas

            Nui = { -- Posição na Nui
                top = 31, -- Cima
                left = 13.5 -- Esquerda [ Numero Negativo Movimenta pra Esquerda ]
            }
        }, -- Fim da localização

        { -- Começo de uma localização
            Name = 'Hospital', -- Nome
            Description = 'Um dos locais mais movimentados de nossa cidade, muitas pessoas circulando por ai, você terá facilidade em fazer contatos aqui, vamos lá?', -- Descrição
            Image = 'https://media.discordapp.net/attachments/712813090952970344/1035231436707471440/aeroporto.png?width=994&height=559', -- Nome da Imagem
            Spawn = vector3(-513.65,-978.64,23.51), -- Coordenadas

            Nui = { -- Posição na Nui
                top = 27, -- Cima
                left = 19.5 -- Esquerda [ Numero Negativo Movimenta pra Esquerda ]
            }
        }, -- Fim da localização

        { -- Começo de uma localização
            Name = 'Praça', -- Nome
            Description = 'Um dos Locais mais divertidos e descontraidos da cidade, Bora lá?', -- Descrição
            Image = 'https://media.discordapp.net/attachments/712813090952970344/1035231436250300518/praca.png?width=994&height=559', -- Nome da Imagem
            Spawn = vector3(99.99,-1078.02,29.21), -- Coordenadas

            Nui = { -- Posição na Nui
                top = 41.7, -- Cima
                left = 31.1 -- Esquerda [ Numero Negativo Movimenta pra Esquerda ]
            }
        }, -- Fim da localização
        
        { -- Começo de uma localização
            Name = 'Garagem Paleto', -- Nome
            Description = 'Garagem de Paltero', -- Descrição
            Image = 'https://media.discordapp.net/attachments/712813090952970344/1035231435465953310/paleto.png', -- Nome da Imagem
            Spawn = vector3(-767.74,5583.25,33.61), -- Coordenadas

            Nui = { -- Posição na Nui
                top = 32.7, -- Cima
                left = 79 -- Esquerda [ Numero Negativo Movimenta pra Esquerda ]
            }
        }, -- Fim da localização
    }
}