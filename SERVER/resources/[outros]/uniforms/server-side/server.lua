-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())
vSKIN = Tunnel.getInterface("vrp_skinshop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
cO = {}
Tunnel.bindInterface(GetCurrentResourceName(),cO)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIÁVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("saveClothes","INSERT IGNORE INTO clothes(name,permiss,service,custom,sexo) VALUES(@name,@permiss,@service,@custom,@sexo)")
vRP._prepare("updateClothes","UPDATE clothes SET custom = @custom WHERE name = @name AND permiss = @permiss")
vRP._prepare("deleteClothes","DELETE FROM clothes WHERE name = @name")
vRP._prepare("selectClothesT","SELECT * FROM clothes WHERE service = @service AND sexo = @sexo")
vRP._prepare("selectClothesW","SELECT * FROM clothes WHERE name = @name AND sexo = @sexo")
vRP._prepare("selectClothes","SELECT * FROM clothes WHERE name = @name AND permiss = @permiss")

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULTCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
local maxServices = {
    ["HOSPITAL"] = {30},
    ["DEBOXE"] = {30},
    ["SPORT RACE"] = {30},
    ["POLICIA"] = {30},
    ["ROTAM"] = {30},
    ["PRF"] = {30},
    ["CIVIL"] = {30},
    ["MILITAR"] = {30}, 
    ["MILITAR01"] = {30}, 
    ["JUDICIARIO"] = {30}, 
    ["EXERCITO"] = {30}, 
    ["BOMBEIRO"] = {30},
    ["TATICO"] = {30},
    ["GIRO"] = {30},
}

local equipamentos = {
    ["Comando [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub-Comando [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Coronel [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tenente Coronel [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Major [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Capitao [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Tenente [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Tenente [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cadete [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub Tenente [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Sargento [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Sargento [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["3 Sargento [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cabo [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Soldado [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Penal [ROTAM]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,
    --------CIVIL ----
    ["Diretor Geral [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Diretor [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Delegado Geral [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Delegado de Operação [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Delegado [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Delegado Adjunto [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Perito [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Investigador [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Escrivao [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Agente Especial [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Agente [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Agente Carcerario [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Auxiliar [CIVIL]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ---PRF----
    ["Comando [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub-Comando [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Coronel [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tenente Coronel [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Major [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Capitao [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Tenente [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Tenente [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cadete [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub Tenente [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Sargento [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Sargento [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["3 Sargento [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cabo [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Soldado [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Penal [PRF]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,
    
    --- TATICO --

    ["Comando [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub-Comando [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Coronel [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tenente Coronel [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Major [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Capitao [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Tenente [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Tenente [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cadete [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub Tenente [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Sargento [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Sargento [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["3 Sargento [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cabo [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Soldado [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Penal [TATICO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    --- militar --

    ["Comando [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub-Comando [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Coronel [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tenente Coronel [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Major [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Capitao [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Tenente [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Tenente [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cadete [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub Tenente [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Sargento [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Sargento [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["3 Sargento [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cabo [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Soldado [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Penal [MILITAR]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

        --- MILITAR01 --

        ["Comando [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Sub-Comando [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Coronel [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Tenente Coronel [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Major [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Capitao [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["1 Tenente [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["2 Tenente [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Cadete [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Sub Tenente [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["1 Sargento [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["2 Sargento [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["3 Sargento [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Cabo [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Soldado [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Penal [MILITAR01]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    

    ---judiciario ---

    ["Ministro [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Juiz [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Juiz Militar [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Desembargador [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Corregedor [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Promotor [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Advogado [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Presidente da OAB [JUDICIARIO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    -- HOSPITAL
    ["Enfermeiro [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Enfermeiro-Chefe [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Paramedico [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Medico [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Medico-Chefe [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Vice-Diretor [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Diretor [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Presidente [HOSPITAL]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    -- HOSPITAL
    ["Lider [DEBOXE]"] = function(source, user_id) 
       --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
       --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
       vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Gerente [DEBOXE]"] = function(source, user_id) 
        -- vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        -- vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
         vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
     end,

     ["Sub Gerente [DEBOXE]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tunning [DEBOXE]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
         vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
     end,

     ["Mecanico [DEBOXE]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Funcionario [DEBOXE]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,
------------------competcar

    ["Lider [COMPETCAR]"] = function(source, user_id) 
       --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
       --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
       vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Gerente [COMPETCAR]"] = function(source, user_id) 
        -- vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        -- vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
         vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
     end,

     ["Sub Gerente [COMPETCAR]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tunning [COMPETCAR]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
         vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
     end,

     ["Mecanico [COMPETCAR]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Funcionario [COMPETCAR]"] = function(source, user_id) 
        --vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        --vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,
    -- BOMBEIRO
    ["Enfermeiro [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Enfermeiro-Chefe [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Paramedico [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Medico [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Medico-Chefe [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Vice-Diretor [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Diretor [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Presidente [BOMBEIRO]"] = function(source, user_id) 
        vRP.giveInventoryItem(user_id, "bandagem", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["General [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Coronel [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Tenente Coronel [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Major [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Capitao [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["1 Tenente [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["2 Tenente [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Aspirante a Oficial [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Sub Tenente [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["1 Sargento [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["2 Sargento [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["3 Sargento [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Cabo [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Soldado [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_TATICALRIFLE"] = {ammo= 250},
        --  ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        --  ["WEAPON_STUNGUN"] = {ammo= 1},
           
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        vRP.giveInventoryItem(user_id, "algemas", 1, true) -- ALGEMAS
        vRP.giveInventoryItem(user_id, "WEAPON_FLASHLIGHT", 1, true) -- LANTERNA
    end,

    ["Recruta [EXERCITO]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
           -- ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
           -- ["WEAPON_COMBATPISTOL"] = {ammo= 250},
           -- ["WEAPON_STUNGUN"] = {ammo= 1},
           -- ["WEAPON_NIGTHSTICK"] = {ammo= 1},
           -- ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,
    ---------GIRO 
        ["Comando [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Sub-Comando [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Coronel [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Tenente Coronel [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Major [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Capitao [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["1 Tenente [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["2 Tenente [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Cadete [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Sub Tenente [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_CARBINERIFLE"] = {ammo= 250},
                ["WEAPON_SMG"] = {ammo= 250},
                ["WEAPON_PISTOL_MK2"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["1 Sargento [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["2 Sargento [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["3 Sargento [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Cabo [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Soldado [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_COMBATPISTOL"] = {ammo= 250},
                ["WEAPON_STUNGUN"] = {ammo= 1},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
                ["WEAPON_NIGHTSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
    
        ["Penal [GIRO]"] = function(source, user_id) 
            vRPC._giveWeapons(source, { 
                ["WEAPON_SPECIALCARBINE_MK2"] = {ammo= 250},
                ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            }, true)
    
            vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
            vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
        end,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULTCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("sysClothes:applyPreset")
AddEventHandler("sysClothes:applyPreset",function(perm)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then

        local sexo
        if GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_m_freemode_01") then 
            sexo = "mp_m_freemode_01"
        elseif GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_f_freemode_01") then 
            sexo = "mp_f_freemode_01"
        end

        if perm == "apply" then 
            local permiss = string.upper(vRP.getUserGroupOrg(user_id))
            if permiss == "" then permiss = "Nenhum" end
            if permiss == "AUTO SPORT" or permiss == "SPORT RACE" then
                permiss = "Sport RACE"
            end
            TriggerClientEvent("dynamic:closeSystem2", source)
            local clothes = vRP.prompt(source, "Insira o nome do uniforme", "")
            if clothes and clothes ~= "" and clothes ~= nil and maxServices[permiss] then
                local myClothes = vRPC.getCustomization(source)
                if myClothes then 
                    local maxconsult = vRP.query("selectClothesT",{ service = permiss })
                    if parseInt(#maxconsult) >= maxServices[permiss][1] then 
                        TriggerClientEvent("Notify",source,"negado","Você atingiu o número máximo de uniformes, delete algum para prosseguir.",6000)
                        return false 
                    end

                    vRP.execute("saveClothes",{ name = clothes, service = permiss, permiss = permiss, custom = json.encode(myClothes), sexo = sexo })
                    TriggerClientEvent("Notify",source,"importante","Preset salvo com sucesso",6000)
                end
            end

        elseif perm == "delete" then 
            local permiss = vRP.getUserGroupOrg(user_id):upper()
            if permiss == "" then permiss = "Nenhum" end
            if permiss == "AUTO SPORT" or permiss == "SPORT RACE" then
                permiss = "Sport RACE"
            end

            TriggerClientEvent("dynamic:closeSystem2", source)
            local clothes = vRP.prompt(source, "Insira o nome do uniforme que deseja deletar.", "")
            if clothes then 
                local consult = vRP.query("selectClothes",{ permiss = permiss, name = clothes })
                if consult[1] then 
                    vRP.execute("deleteClothes",{ name = clothes })
                    TriggerClientEvent("Notify",source,"importante","Uniforme deletado",6000)  
                end
            end

        elseif perm == "sairPtr" then
            if vRP.hasPermission(user_id, "perm.policia") or vRP.hasPermission(user_id, "perm.exercito") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1029551169711906897/nhM3PCiwEIWk6lWPb1Br7KKWU-PGN0R0TzQNWtRXNBRJstrGuxUUh1Ep7TCdoAhSWJqy", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.mecanico") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1029549339019849758/PgPq-hyMwHgOH5UZXUvtQwyquNmzNXCezCXnHHUr-jPja4FbYXok2hdZF1-GCxIh3kVg", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.mecanico") then
                --vRP.sendLog("https://discordapp.com/api/webhooks/1029551169711906897/nhM3PCiwEIWk6lWPb1Br7KKWU-PGN0R0TzQNWtRXNBRJstrGuxUUh1Ep7TCdoAhSWJqy", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.mecanico") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1030754926428692530/yekozBbary8etAU1gTW6-1E1b_H094Di_YzbOTBlQYGQamcIGccdOlR-noALJ17F9acS", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.hospital") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1029549859742695475/UFLxSX9WwJ98CGiATSMgpsaO1z5QWnOvQMoJdihgJScBSeSHNoso_D2v3Tm33SXlljl0", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            end

            limparItems(user_id)
            TriggerEvent('eblips:remove',source)
            vRPC._giveWeapons(source, {}, true)
            
            vRP.addUserGroup(user_id, "Paisana")
            TriggerClientEvent("Notify",source,"importante","Você saiu de patrulhamento..",6000)
        end

        local consult = vRP.query("selectClothesW",{ name = perm, sexo = sexo })
        local myClothes = vRPC.getCustomization(source)
        if consult[1] and consult[1].custom then
            limparItems(user_id)
            
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.removeUserGroup(user_id, "Paisana")

            TriggerClientEvent("Notify",source,"sucesso","Você entrou em patrulhamento..",6000)
            local permiss = vRP.getUserGroupOrg(user_id)
            if permiss == "" then return end
            -- TriggerEvent('eblips:add',{ name = permiss, src = source, color = 3 })

            for index in pairs(equipamentos) do
                if vRP.hasGroup(user_id, index) then
                    equipamentos[index](source, user_id)
                    TriggerClientEvent("Notify",source,"sucesso","Você recebeu seus equipamentos ..",6000)
                    break;
                end
            end

            if vRP.hasPermission(user_id, "perm.policia") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1029551169711906897/nhM3PCiwEIWk6lWPb1Br7KKWU-PGN0R0TzQNWtRXNBRJstrGuxUUh1Ep7TCdoAhSWJqy", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.mecanico") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1029549339019849758/PgPq-hyMwHgOH5UZXUvtQwyquNmzNXCezCXnHHUr-jPja4FbYXok2hdZF1-GCxIh3kVg", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.mecanico") then
                --vRP.sendLog("https://discordapp.com/api/webhooks/1029551169711906897/nhM3PCiwEIWk6lWPb1Br7KKWU-PGN0R0TzQNWtRXNBRJstrGuxUUh1Ep7TCdoAhSWJqy", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.mecanico") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1030754926428692530/yekozBbary8etAU1gTW6-1E1b_H094Di_YzbOTBlQYGQamcIGccdOlR-noALJ17F9acS", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.hospital") then
                vRP.sendLog("https://discordapp.com/api/webhooks/1029549859742695475/UFLxSX9WwJ98CGiATSMgpsaO1z5QWnOvQMoJdihgJScBSeSHNoso_D2v3Tm33SXlljl0", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            end 
        end
    end
end)

cO.requestClothes = function(sv,perm)
    local source = source 
    local user_id = vRP.getUserId(source)
    if user_id then 
        if vRP.hasPermission(user_id, perm) or vRP.hasGroup(user_id, "Paisana") then 
            local sexo
            if GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_m_freemode_01") then 
                sexo = "mp_m_freemode_01"
            elseif GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_f_freemode_01") then 
                sexo = "mp_f_freemode_01"
            end

            local consult = vRP.query("selectClothesT",{ service = sv, sexo = sexo })
            if consult[1] then 
                return consult
            end

            return false
        end
    end
end

cO.requestPermission = function(perm,perm2)
    local source = source 
    local user_id = vRP.getUserId(source)
    if user_id then 
        print(vRP.hasPermission(user_id, perm2), perm2)
        return (vRP.hasPermission(user_id, perm) or vRP.hasGroup(user_id, "Paisana")),vRP.hasPermission(user_id, perm2)
    end
end
       
function limparItems(id)
    vRP.tryGetInventoryItem(id, "body_armor", vRP.getInventoryItemAmount(id, "body_armor"), true)
	vRP.tryGetInventoryItem(id, "radio", vRP.getInventoryItemAmount(id, "radio"), true)
end