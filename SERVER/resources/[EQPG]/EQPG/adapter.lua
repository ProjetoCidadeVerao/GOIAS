-------------------------------------
-- ## Adicionais
-------------------------------------
 -- Força a autorizar o discord!
EQPG.request = false

-------------------------------------
-- ## Instalação proxy
-------------------------------------
EQPG.event = "SafeProxyRozeira"

-------------------------------------
-- Máximo de muni - Distância freecam
-------------------------------------
EQPG.maxammo = 250
EQPG.maxfreecam = 50

-------------------------------------
-- Proxys protegidas
-------------------------------------
EQPG.proxys = {
    "giveWeapons",
    "toggleHandcuff",
    "setHealth",
    "setArmour",
    "killGod",
    "giveMoney",
    "giveBankMoney",
    "setBankMoney",
    "giveInventoryItem"
}

-------------------------------------
-- ## Proteções
-------------------------------------
EQPG.spawn_health = true
EQPG.spawn_weapon = true
EQPG.spawn_weapon_2 = true
EQPG.spawn_veiculo = true
EQPG.spawn_objeto = true
EQPG.spawn_ped = true
EQPG.objeto_permitido = true
EQPG.anti_proxy = true
EQPG.buzina_boost = true
EQPG.no_recoil = true
EQPG.infinity_ammo = true
EQPG.explosive_shot = true
EQPG.super_damage = true
EQPG.damage_boost = true
EQPG.defense_boost = true
EQPG.invisibility = true
EQPG.invisibility_alpha = true
EQPG.devtools = true
EQPG.state_bags = true
EQPG.addexplosion = true
EQPG.getusingnightvision = true
EQPG.getusingseethrough = true
EQPG.super_jump = true
EQPG.mod_menu = true
EQPG.play_sound = true
EQPG.aimbot = true
EQPG.noclip = true
EQPG.noclip_2 = true
EQPG.freecam = true
EQPG.spectate = true
EQPG.silent = true
EQPG.pickups = true
EQPG.hit_kill = true
EQPG.ptfxevent = true
EQPG.infinite_roll = true
EQPG.player_invencible = true
EQPG.player_proofs = true
EQPG.player_speed = true
EQPG.player_flag = true
EQPG.player_fire = true
EQPG.player_anim = true

-------------------------------------
-- Funções do Framework
-------------------------------------
function IDsEQPG(source)
    return vRP.getUserId(source) or vRP.Passport(source)
end

function PermEQPG(user_id, permission)
    return vRP.hasPermission(user_id, permission) or vRP.HasPermission(user_id, permission)
end

-------------------------------------
-- Permissões
-------------------------------------
-- Comando para abrir o menu
EQPG.acmenu = "acmenu"
-- Permissões para notifys
EQPG.notify = {"admin.permissao","Admin"}
-- Permissões para acessar o painel
EQPG.painel = {"admin.permissao","Admin"}
-- Permissões para funções do painel
EQPG.functions = {"admin.permissao","Admin"}