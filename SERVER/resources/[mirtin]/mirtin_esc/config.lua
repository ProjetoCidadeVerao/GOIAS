Config = {
    Info = {
        main = {
            name = function(user_id, source, identity) 
                return identity.firstname .. " " .. identity.name
            end,

            genre = function(user_id, source) 
                return (GetEntityModel(GetPlayerPed(source)) == GetHashKey('mp_m_freemode_01') and "HOMEM" or "MULHER")
            end,

            image = function(user_id, source)
                local rows = vRP.query("identity/getImagem", { user_id = user_id })
 
                return (#rows > 0 and rows[1].avatarURL or "nao-encontrado.png" )
            end,

            wallet = function(user_id, source) 
                return vRP.getMoney(user_id)
            end,

            bank = function(user_id, source) 
                return vRP.getBankMoney(user_id)
            end,
        },

        others = {
            ['VIP'] = function(user_id, source, identity) 
                local Vips = { -- Coloque aqui o nome do seus VIPS
                    "Bronze",
                    "Ouro",
                    "Platina"
                }

                local FormatVips = {}
                for index in pairs(Vips) do
                    if vRP.hasGroup(user_id, Vips[index]) then
                        FormatVips[#FormatVips + 1] = Vips[index]
                    end
                end           

                return (#FormatVips == 0 and "Nenhum" or FormatVips)
            end,
    
            ['TRABALHO'] = function(user_id, source, identity) 
                return vRP.getUserGroupByType(user_id, "job")
            end,
    
            ['IDENTIDADE'] = function(user_id, source, identity) 
                return identity.registration
            end,
    
            ['IDADE'] = function(user_id, source, identity) 
                return identity.age
            end,
    
            ['TELEFONE'] = function(user_id, source, identity) 
                return identity.phone
            end,
        }
    },

    Social = { -- REDES SOCIAIS
        ['INSTAGRAM'] = {
            active = true,
            url = 'https://www.instagram.com/', -- LINK QUE SERA REDERICIONADO APOS CLICAR
            image = 'images/instagram-icon.svg'
        },

        ['TIKTOK'] = {
            active = true,
            url = 'https://www.tiktok.com/', -- LINK QUE SERA REDERICIONADO APOS CLICAR
            image = 'images/tiktok-icon.svg'
        },

        ['LOJA VIP'] = {
            active = true,
            url = 'https://www.hydrus.gg/', -- LINK QUE SERA REDERICIONADO APOS CLICAR
            image = 'images/loja-icon.svg'
        },

        ['DISCORD'] = {
            active = true,
            url = 'https://discord.gg/MPm3Pptfn5', -- LINK QUE SERA REDERICIONADO APOS CLICAR
            image = 'images/discord-icon.svg'
        },
    },

    Status = {
        func = vRP.getUsersByPermission, -- SUA FUNCAO DE CONTAR AS PERMISSOES

        list = {
            ['Mecanicos'] = "mecanico.permissao",
            ['Paramedicos'] = "paramedico.permissao",
            ['Policiais'] = "perm.policia",
            ['Ilegal'] = "ilegal.permissao",
            ['Administradores'] = "admin.permissao",
        }
    },
}

if SERVER then
    vRP._prepare("identity/getImagem", "SELECT avatarURL from smartphone_instagram WHERE user_id = @user_id ")

    function Identity(user_id)
        return vRP.getUserIdentity(user_id)
    end

    function UserId(source)
        return vRP.getUserId(source)
    end
end