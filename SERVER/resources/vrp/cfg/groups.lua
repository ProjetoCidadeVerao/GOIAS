local cfg = {}

cfg.groups = {
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ADMINISTRAÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["developer"] = { _config = { gtype = "staff", salario = 8000 }, "admin.permissao", "perm.wall", "dv.permissao", "ticket.permissao", "developer.permissao","player.blips", "perm.re", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff","player.som", "perm.algemar" },
	["developeroff"] = { _config = { gtype = "staff", salario = 8000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["admin"] = { _config = { gtype = "staff", salario = 6000 }, "admin.permissao", "perm.wall", "dv.permissao", "ticket.permissao", "perm.re", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["adminoff"] = { _config = { gtype = "staff", salario = 6000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderador"] = { _config = { gtype = "staff", salario = 4000 }, "moderador.permissao", "perm.wall", "dv.permissao", "perm.re", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderadoroff"] = { _config = { gtype = "staff", salario = 4000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporte"] = { _config = { gtype = "staff", salario = 2000 }, "suporte.permissao", "perm.wall", "dv.permissao", "perm.re", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporteoff"] = { _config = { gtype = "staff", salario = 2000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["user"] = { "perm.user"},
	--["wall"] = { "permi.bobao"},
	["streamer"] = { _config = { gtype = "staff" }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall", "mqcu.permissao", "streamer.permissao", "perm.algemar" },
	["streamer2"] = { _config = { gtype = "staff" }, "player.blips", "dv.permissao", "streamer2.permissao", "perm.wall", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall", "mqcu.permissao", "streamer.permissao", "perm.algemar" },
	["investidoranjo"] = { _config = { gtype = "staff" }, "investidoranjo.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VIPS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ["Promo"] = { _config = { gtype = "Promo", salario = 15000 }, "perm.vips", "perm.promo", "perm.mochila", "perm.verificado", "perm.som", "perm.som1", "perm.helivip", "rastreador.permissao", "perm.reparo", "perm.fixvip" },
	["Exclusiva"] = { _config = { gtype = "Exclusiva", salario = 10000 }, "perm.vips", "perm.exclusiva", "perm.mochila", "perm.verificado", "perm.som" },		
    ["Bronze"] = { _config = { gtype = "Bronze", salario = 5000 }, "perm.vips", "perm.bronze", "perm.mochila" },
	["Prata"] = { _config = { gtype = "Prata", salario = 7000 }, "perm.vips", "perm.prata", "perm.som", "perm.verificado", "perm.mochila" },
	["Ouro"] = { _config = { gtype = "Ouro", salario = 9000 }, "perm.vips", "perm.ouro", "perm.som", "perm.verificado", "perm.mochila" },
	["Platina"] = { _config = { gtype = "Platina", salario = 11000 }, "perm.vips", "perm.platina", "perm.som", "perm.verificado", "perm.mochila" },
	["Diamante"] = { _config = { gtype = "Diamante", salario = 13000 }, "perm.vips", "perm.diamante", "perm.som", "perm.verificado", "perm.mochila", "perm.helivip" },
	["Ruby"] = { _config = { gtype = "Ruby", salario = 15000 }, "perm.vips", "perm.ruby", "perm.som", "perm.verificado", "perm.mochila", "perm.helivip" },
	["Safira"] = { _config = { gtype = "Safira", salario = 18000 }, "perm.vips", "perm.safira", "perm.som", "perm.verificado", "perm.mochila", "perm.helivip", "perm.reparo" },
	["Green"] = { _config = { gtype = "Green", salario = 20000 }, "perm.vips", "perm.green", "perm.som", "perm.verificado", "perm.mochila", "perm.helivip", "perm.reparo" },
	["Black"] = { _config = { gtype = "Black", salario = 22000 }, "perm.vips", "perm.black", "perm.som", "perm.verificado", "perm.mochila", "perm.helivip", "perm.reparo" },
	["Passe"] = { _config = { gtype = "Passe", salario = 0 }, "perm.passedebatalha2" },
	["Som"] = { _config = { gtype = "Som", salario = 0 }, "perm.som" },
	["Dj"] = { _config = { gtype = "Dj", salario = 0 }, "perm.som1" },
	["Salario1"] = { _config = { gtype = "Salario1", salario = 10000 }, "perm.salario1" },
	["Salario2"] = { _config = { gtype = "Salario2", salario = 20000 }, "perm.salario1" },
	["Salario3"] = { _config = { gtype = "Salario3", salario = 30000 }, "perm.salario1" },
	["Rastreador"] = { _config = { gtype = "Rastreador", salario = 0 }, "rastreador.permissao" },
	["Janeiro"] = { _config = { gtype = "Janeiro", salario = 1000 }, "perm.vips", "perm.janeiro" },
	["Fixvip"] = { _config = { gtype = "Fixvip", salario = 0 }, "perm.fixvip" },
	["Helivip"] = { _config = { gtype = "Helivip", salario = 0 }, "perm.helivip" },
	["Vipfacbronze"] = { _config = { gtype = "Vipfacbronze", salario = 7000 }, "perm.vips", "perm.vipfacbronze" },
	["Vipfacprata"] = { _config = { gtype = "Vipfacprata", salario = 10000 }, "perm.vips", "perm.vipfacprata" },
	["Vipfacouro"] = { _config = { gtype = "Vipfacouro", salario = 12000 }, "perm.vips", "perm.vipfacouro" },
	["Vipfacplatina"] = { _config = { gtype = "Vipfacplatina", salario = 15000 }, "perm.vips", "perm.vipfacplatina" },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BENEFICIOS 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Verificado"] = { _config = { salario = nil }, "perm.verificado"},
	["valecasa"] = { _config = { salario = nil }, "valecasa.permissao"}, 
	["valegaragem"] = { _config = { salario = nil }, "valegaragem.permissao"}, 
	["comboxj"] = { _config = { salario = nil }, "perm.comboxj"},
	["salariobooster"] = { _config = { salario = nil }, "perm.booster"},
	["Suspevip"] = { _config = { salario = nil }, "perm.suspevip"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["paintball"] = { _config = { salario = 15000 }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall" },
	["Porte de Armas"] = { _config = { salario = 10000 }, "perm.portearmas" },
	["Paisana"] = { _config = { salario = 5000 }, "-perm.hospital", "-perm.policia" },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ROTAM
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- ROTAM
	["Comando [ROTAM]"] = { _config = { gtype = "org", salario = 45000, orgName = "Rotam" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.recrutamentorotam", "perm.legal", "perm.rotam"},	
	["Sub-Comando [ROTAM]"] = { _config = { gtype = "org", salario = 40000, orgName = "Rotam" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.rotam"},	
	["Coronel [ROTAM]"] = { _config = { gtype = "org", salario = 38000, orgName = "Rotam" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.rotam"},	
	["Tenente Coronel [ROTAM]"] = { _config = { gtype = "org", salario = 36000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},	
	["Major [ROTAM]"] = { _config = { gtype = "org", salario = 34000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},	
	["Capitao [ROTAM]"] = { _config = { gtype = "org", salario = 32000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},	
	["1 Tenente [ROTAM]"] = { _config = { gtype = "org", salario = 30000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},	
	["2 Tenente [ROTAM]"] = { _config = { gtype = "org", salario = 28000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["Cadete [ROTAM]"] = { _config = { gtype = "org", salario = 26000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["Sub Tenente [ROTAM]"] = { _config = { gtype = "org", salario = 24000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["1 Sargento [ROTAM]"] = { _config = { gtype = "org", salario = 22000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["2 Sargento [ROTAM]"] = { _config = { gtype = "org", salario = 200000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["3 Sargento [ROTAM]"] = { _config = { gtype = "org", salario = 18000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["Cabo [ROTAM]"] = { _config = { gtype = "org", salario = 16000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["Soldado [ROTAM]"] = { _config = { gtype = "org", salario = 12000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
	["Penal [ROTAM]"] = { _config = { gtype = "org", salario = 10000, orgName = "Rotam" }, "perm.policia", "perm.legal", "perm.rotam"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Giro
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- Giro
	["Comando [GIRO]"] = { _config = { gtype = "org", salario = 42000, orgName = "Giro" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.recrutamentogiro", "perm.legal", "perm.giro"},	
	["Sub-Comando [GIRO]"] = { _config = { gtype = "org", salario = 38000, orgName = "Giro" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.giro"},	
	["Coronel [GIRO]"] = { _config = { gtype = "org", salario = 36000, orgName = "Giro" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.giro"},	
	["Tenente Coronel [GIRO]"] = { _config = { gtype = "org", salario = 34000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},	
	["Major [GIRO]"] = { _config = { gtype = "org", salario = 32000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},	
	["Capitao [GIRO]"] = { _config = { gtype = "org", salario = 30000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},	
	["1 Tenente [GIRO]"] = { _config = { gtype = "org", salario = 28000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},	
	["2 Tenente [GIRO]"] = { _config = { gtype = "org", salario = 26000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["Cadete [GIRO]"] = { _config = { gtype = "org", salario = 24000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["Sub Tenente [GIRO]"] = { _config = { gtype = "org", salario = 22000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["1 Sargento [GIRO]"] = { _config = { gtype = "org", salario = 10000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["2 Sargento [GIRO]"] = { _config = { gtype = "org", salario = 18000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["3 Sargento [GIRO]"] = { _config = { gtype = "org", salario = 16000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["Cabo [GIRO]"] = { _config = { gtype = "org", salario = 14000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["Soldado [GIRO]"] = { _config = { gtype = "org", salario = 12000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
	["Penal [GIRO]"] = { _config = { gtype = "org", salario = 10000, orgName = "Giro" }, "perm.policia", "perm.legal", "perm.giro"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TATICO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- TATICO
	["Comando [TATICO]"] = { _config = { gtype = "org", salario = 15000, orgName = "Tatico" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.recrutamentotatico", "perm.legal", "perm.tatico"},	
	["Sub-Comando [TATICO]"] = { _config = { gtype = "org", salario = 14000, orgName = "Tatico" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.tatico"},	
	["Coronel [TATICO]"] = { _config = { gtype = "org", salario = 13000, orgName = "Tatico" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.tatico"},	
	["Tenente Coronel [TATICO]"] = { _config = { gtype = "org", salario = 12000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},	
	["Major [TATICO]"] = { _config = { gtype = "org", salario = 11000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},	
	["Capitao [TATICO]"] = { _config = { gtype = "org", salario = 10000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},	
	["1 Tenente [TATICO]"] = { _config = { gtype = "org", salario = 9000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},	
	["2 Tenente [TATICO]"] = { _config = { gtype = "org", salario = 8000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["Cadete [TATICO]"] = { _config = { gtype = "org", salario = 7000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["Sub Tenente [TATICO]"] = { _config = { gtype = "org", salario = 6000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["1 Sargento [TATICO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["2 Sargento [TATICO]"] = { _config = { gtype = "org", salario = 4000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["3 Sargento [TATICO]"] = { _config = { gtype = "org", salario = 3000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["Cabo [TATICO]"] = { _config = { gtype = "org", salario = 2000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["Cabo [TATICO]"] = { _config = { gtype = "org", salario = 2000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},
	["Penal [TATICO]"] = { _config = { gtype = "org", salario = 1000, orgName = "Tatico" }, "perm.policia", "perm.legal", "perm.tatico"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BOMBEIRO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOMBEIRO
	["Comando [BOMBEIRO]"] = { _config = { gtype = "org", salario = 35000, orgName = "Bombeiro" }, "perm.liderhospital", "perm.hospital", "perm.dv", "perm.legal", "perm.recrutamentobombeiro", "perm.bombeiro", "perm.re"},	
	["Sub-Comando [BOMBEIRO]"] = { _config = { gtype = "org", salario = 34000, orgName = "Bombeiro" }, "perm.liderhospital", "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},	
	["Coronel [BOMBEIRO]"] = { _config = { gtype = "org", salario = 33000, orgName = "Bombeiro" }, "perm.liderhospital", "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},	
	["Tenente Coronel [BOMBEIRO]"] = { _config = { gtype = "org", salario = 32000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},	
	["Major [BOMBEIRO]"] = { _config = { gtype = "org", salario = 31000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},	
	["Capitao [BOMBEIRO]"] = { _config = { gtype = "org", salario = 300000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},	
	["1 Tenente [BOMBEIRO]"] = { _config = { gtype = "org", salario = 29000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},	
	["2 Tenente [BOMBEIRO]"] = { _config = { gtype = "org", salario = 28000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["Cadete [BOMBEIRO]"] = { _config = { gtype = "org", salario = 27000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["Sub Tenente [BOMBEIRO]"] = { _config = { gtype = "org", salario = 26000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["1 Sargento [BOMBEIRO]"] = { _config = { gtype = "org", salario = 24000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["2 Sargento [BOMBEIRO]"] = { _config = { gtype = "org", salario = 22000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["3 Sargento [BOMBEIRO]"] = { _config = { gtype = "org", salario = 20000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["Cabo [BOMBEIRO]"] = { _config = { gtype = "org", salario = 18000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["Soldado [BOMBEIRO]"] = { _config = { gtype = "org", salario = 12000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},
	["Penal [BOMBEIRO]"] = { _config = { gtype = "org", salario = 10000, orgName = "Bombeiro" }, "perm.hospital", "perm.legal", "perm.bombeiro", "perm.re"},

	-- MILITAR
	["Comando [MILITAR]"] = { _config = { gtype = "org", salario = 44000, orgName = "Militar" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.legal", "perm.recrutamentomilitar", "perm.militar"},	
	["Sub-Comando [MILITAR]"] = { _config = { gtype = "org", salario = 42000, orgName = "Militar" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.militar"},	
	["Coronel [MILITAR]"] = { _config = { gtype = "org", salario = 38000, orgName = "Militar" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.militar"},	
	["Tenente Coronel [MILITAR]"] = { _config = { gtype = "org", salario = 34000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Major [MILITAR]"] = { _config = { gtype = "org", salario = 32000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Capitao [MILITAR]"] = { _config = { gtype = "org", salario = 300000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["1 Tenente [MILITAR]"] = { _config = { gtype = "org", salario = 28000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["2 Tenente [MILITAR]"] = { _config = { gtype = "org", salario = 26000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Cadete [MILITAR]"] = { _config = { gtype = "org", salario = 24000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Sub Tenente [MILITAR]"] = { _config = { gtype = "org", salario = 22000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["1 Sargento [MILITAR]"] = { _config = { gtype = "org", salario = 20000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["2 Sargento [MILITAR]"] = { _config = { gtype = "org", salario = 18000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["3 Sargento [MILITAR]"] = { _config = { gtype = "org", salario = 16000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Cabo [MILITAR]"] = { _config = { gtype = "org", salario = 14000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Soldado [MILITAR]"] = { _config = { gtype = "org", salario = 12000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Penal [MILITAR]"] = { _config = { gtype = "org", salario = 10000, orgName = "Militar" }, "perm.policia", "perm.legal", "perm.militar"},	

	-- MILITAR01
	["Comando [MILITAR01]"] = { _config = { gtype = "org", salario = 44000, orgName = "Militar01" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.legal", "perm.recrutamentomilitar", "perm.militar"},	
	["Sub-Comando [MILITAR01]"] = { _config = { gtype = "org", salario = 42000, orgName = "Militar01" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.militar"},	
	["Coronel [MILITAR01]"] = { _config = { gtype = "org", salario = 38000, orgName = "Militar01" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.militar"},	
	["Tenente Coronel [MILITAR01]"] = { _config = { gtype = "org", salario = 34000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Major [MILITAR01]"] = { _config = { gtype = "org", salario = 32000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Capitao [MILITAR01]"] = { _config = { gtype = "org", salario = 300000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["1 Tenente [MILITAR01]"] = { _config = { gtype = "org", salario = 28000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["2 Tenente [MILITAR01]"] = { _config = { gtype = "org", salario = 26000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Cadete [MILITAR01]"] = { _config = { gtype = "org", salario = 24000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Sub Tenente [MILITAR01]"] = { _config = { gtype = "org", salario = 22000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["1 Sargento [MILITAR01]"] = { _config = { gtype = "org", salario = 20000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["2 Sargento [MILITAR01]"] = { _config = { gtype = "org", salario = 18000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["3 Sargento [MILITAR01]"] = { _config = { gtype = "org", salario = 16000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Cabo [MILITAR01]"] = { _config = { gtype = "org", salario = 14000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Soldado [MILITAR01]"] = { _config = { gtype = "org", salario = 12000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},	
	["Penal [MILITAR01]"] = { _config = { gtype = "org", salario = 10000, orgName = "Militar01" }, "perm.policia", "perm.legal", "perm.militar"},

	-- CIVIL
	["Diretor Geral [CIVIL]"] = { _config = { gtype = "org", salario = 38000, orgName = "Civil" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.legal", "perm.recrutamentocivil", "perm.civil"},	
	["Diretor [CIVIL]"] = { _config = { gtype = "org", salario = 32000, orgName = "Civil" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.civil"},	
	["Delegado Geral [CIVIL]"] = { _config = { gtype = "org", salario = 300000, orgName = "Civil" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.civil"},	
	["Delegado de Operação [CIVIL]"] = { _config = { gtype = "org", salario = 28000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Delegado [CIVIL]"] = { _config = { gtype = "org", salario = 26000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Delegado Adjunto [CIVIL]"] = { _config = { gtype = "org", salario = 24000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Perito [CIVIL]"] = { _config = { gtype = "org", salario = 22000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Investigador [CIVIL]"] = { _config = { gtype = "org", salario = 20000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Escrivao [CIVIL]"] = { _config = { gtype = "org", salario = 18000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Agente Especial [CIVIL]"] = { _config = { gtype = "org", salario = 16000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Agente [CIVIL]"] = { _config = { gtype = "org", salario = 14000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Agente Carcerario [CIVIL]"] = { _config = { gtype = "org", salario = 12000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	
	["Auxiliar [CIVIL]"] = { _config = { gtype = "org", salario = 10000, orgName = "Civil" }, "perm.policia", "perm.legal", "perm.civil"},	

	-- PRF
	["Comando [PRF]"] = { _config = { gtype = "org", salario = 42000, orgName = "Prf" }, "perm.liderpolicia", "perm.policia", "perm.dv", "perm.legal", "perm.recrutamentoprf", "perm.prf"},	
	["Sub-Comando [PRF]"] = { _config = { gtype = "org", salario = 40000, orgName = "Prf" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.prf"},	
	["Coronel [PRF]"] = { _config = { gtype = "org", salario = 38000, orgName = "Prf" }, "perm.liderpolicia", "perm.policia", "perm.legal", "perm.prf"},	
	["Tenente Coronel [PRF]"] = { _config = { gtype = "org", salario = 36000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["Major [PRF]"] = { _config = { gtype = "org", salario = 34000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["Capitao [PRF]"] = { _config = { gtype = "org", salario = 320000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["1 Tenente [PRF]"] = { _config = { gtype = "org", salario = 30000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["2 Tenente [PRF]"] = { _config = { gtype = "org", salario = 28000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["Cadete [PRF]"] = { _config = { gtype = "org", salario = 26000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["Sub Tenente [PRF]"] = { _config = { gtype = "org", salario = 24000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["1 Sargento [PRF]"] = { _config = { gtype = "org", salario = 22000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["2 Sargento [PRF]"] = { _config = { gtype = "org", salario = 20000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["3 Sargento [PRF]"] = { _config = { gtype = "org", salario = 18000, orgName = "Prf" }, "perm.policia", "perm.legal"}, "perm.prf",	
	["Cabo [PRF]"] = { _config = { gtype = "org", salario = 14000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["Soldado [PRF]"] = { _config = { gtype = "org", salario = 12000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	
	["Penal [PRF]"] = { _config = { gtype = "org", salario = 10000, orgName = "Prf" }, "perm.policia", "perm.legal", "perm.prf"},	

	-- exercito
	["General [EXERCITO]"] = { _config = { gtype = "org", salario = 38000, orgName = "Exercito" }, "perm.lider.exercito","perm.exercito","perm.policia", "perm.dv", "perm.legal", "perm.exercito"},
	["Coronel [EXERCITO]"] = { _config = { gtype = "org", salario = 36000, orgName = "Exercito" }, "perm.lider.exercito","perm.exercito","perm.policia", "perm.legal", "perm.exercito"},
	["Tenente Coronel [EXERCITO]"] = { _config = { gtype = "org", salario = 34000, orgName = "Exercito" }, "perm.lider.exercito", "perm.policia", "perm.legal", "perm.exercito"},    
	["Major [EXERCITO]"] = { _config = { gtype = "org", salario = 32000, orgName = "Exercito" }, "perm.lider.exercito", "perm.policia", "perm.legal", "perm.exercito"},    
	["Capitão [EXERCITO]"] = { _config = { gtype = "org", salario = 30000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["1 Tenente [EXERCITO]"] = { _config = { gtype = "org", salario = 28000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["2 Tenente [EXERCITO]"] = { _config = { gtype = "org", salario = 26000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["Aspirante a Oficial [EXERCITO]"] = { _config = { gtype = "org", salario = 24000, orgName = "exercito" }, "perm.exercito", "perm.legal", "perm.exercito"},    
	["Sub Tenente [EXERCITO]"] = { _config = { gtype = "org", salario = 22000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["1 Sargento [EXERCITO]"] = { _config = { gtype = "org", salario = 20000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["2 Sargento [EXERCITO]"] = { _config = { gtype = "org", salario = 18000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["3 Sargento [EXERCITO]"] = { _config = { gtype = "org", salario = 16000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},
	["Cabo [EXERCITO]"] = { _config = { gtype = "org", salario = 14000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["Soldado [EXERCITO]"] = { _config = { gtype = "org", salario = 12000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
	["Recruta [EXERCITO]"] = { _config = { gtype = "org", salario = 10000, orgName = "Exercito" }, "perm.exercito","perm.policia", "perm.legal", "perm.exercito"},    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HOSPITAL
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Presidente [HOSPITAL]"] = { _config = { gtype = "org", salario = 45000, orgName = "Hospital" }, "perm.liderhospital", "perm.hospital", "perm.dv", "perm.legal", "perm.recrutamentohospital", "perm.re", "perm.hp"},	
	["Diretor [HOSPITAL]"] = { _config = { gtype = "org", salario = 38000, orgName = "Hospital" }, "perm.liderhospital", "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
	["Vice-Diretor [HOSPITAL]"] = { _config = { gtype = "org", salario = 35000, orgName = "Hospital" }, "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
	["Medico-Chefe [HOSPITAL]"] = { _config = { gtype = "org", salario = 30000, orgName = "Hospital" }, "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
	["Medico [HOSPITAL]"] = { _config = { gtype = "org", salario = 29000, orgName = "Hospital" }, "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
	["Paramedico [HOSPITAL]"] = { _config = { gtype = "org", salario = 28000, orgName = "Hospital" }, "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
	["Enfermeiro-Chefe [HOSPITAL]"] = { _config = { gtype = "org", salario = 27000, orgName = "Hospital" }, "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
	["Enfermeiro [HOSPITAL]"] = { _config = { gtype = "org", salario = 20000, orgName = "Hospital" }, "perm.hospital", "perm.legal", "perm.re", "perm.hp"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- JUDICIARIO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Ministro [JUDICIARIO]"] = { _config = { gtype = "org", salario = 8000, orgName = "Judiciario" }, "perm.liderjudiciario", "perm.policia", "perm.judiciario", "perm.dv"},	
	["Juiz [JUDICIARIO]"] = { _config = { gtype = "org", salario = 7000, orgName = "Judiciario" }, "perm.liderjudiciario", "perm.policia", "perm.judiciario"},
	["Juiz Militar [JUDICIARIO]"] = { _config = { gtype = "org", salario = 6000, orgName = "Judiciario" }, "perm.judiciario", "perm.policia"},
	["Desembargador [JUDICIARIO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Judiciario" }, "perm.judiciario", "perm.policia"},
	["Corregedor [JUDICIARIO]"] = { _config = { gtype = "org", salario = 4000, orgName = "Judiciario" }, "perm.judiciario", "perm.policia"},
	["Promotor [JUDICIARIO]"] = { _config = { gtype = "org", salario = 3000, orgName = "Judiciario" }, "perm.judiciario", "perm.policia"},
	["Advogado [JUDICIARIO]"] = { _config = { gtype = "org", salario = 2000, orgName = "Judiciario" }, "perm.judiciario", "perm.policia"},
	["Presidente da OAB [JUDICIARIO]"] = { _config = { gtype = "org", salario = 1000, orgName = "Judiciario" }, "perm.judiciario", "perm.policia"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PREFEITURA
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Prefeito [PREFEITURA]"] = { _config = { gtype = "org", salario = 8000, orgName = "Prefeitura" }, "perm.liderprefeitura", "perm.prefeitura", "perm.dv"},	
	["Vice-Prefeito [PREFEITURA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Prefeitura" }, "perm.liderprefeitura", "perm.prefeitura"},
	["Sec. de Transporte [PREFEITURA]"] = { _config = { gtype = "org", salario = 6000, orgName = "Prefeitura" }, "perm.prefeitura"},
	["Sec. de Seguranca [PREFEITURA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Prefeitura" }, "perm.prefeitura"},
	["Sec. de Trabalho [PREFEITURA]"] = { _config = { gtype = "org", salario = 4000, orgName = "Prefeitura" }, "perm.prefeitura"},
	["Sec. de Imigracao [PREFEITURA]"] = { _config = { gtype = "org", salario = 3000, orgName = "Prefeitura" }, "perm.prefeitura"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MECÂNICAS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- DEBOXE
	["Lider [DEBOXE]"] = { _config = { gtype = "org", salario = 30000, orgName = "Deboxe" }, "perm.liderdeboxe", "perm.deboxe", "perm.mecanico", "perm.dv", "perm.legal", "perm.ilegal", "perm.bahamas", "perm.dv"},
	["Gerente [DEBOXE]"] = { _config = { gtype = "org", salario = 25000, orgName = "Deboxe" }, "perm.liderdeboxe", "perm.deboxe", "perm.mecanico", "perm.legal", "perm.ilegal", "perm.bahamas", "perm.dv"},
	["Sub Gerente [DEBOXE]"] = { _config = { gtype = "org", salario = 2000, orgName = "Deboxe" }, "perm.deboxe", "perm.mecanico", "perm.legal", "perm.ilegal", "perm.bahamas", "perm.dv"},
	["Tunning [DEBOXE]"] = { _config = { gtype = "org", salario = 1500, orgName = "Deboxe" }, "perm.deboxe", "perm.mecanico", "perm.legal", "perm.ilegal", "perm.bahamas", "perm.dv"},
	["Mecanico [DEBOXE]"] = { _config = { gtype = "org", salario = 10000, orgName = "Deboxe" }, "perm.deboxe", "perm.mecanico", "perm.legal", "perm.ilegal", "perm.bahamas", "perm.dv"},
	["Funcionario [DEBOXE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Deboxe" }, "perm.deboxe", "perm.mecanico", "perm.legal", "perm.ilegal", "perm.bahamas", "perm.dv"},

	-- COMPETCAR
	["Lider [COMPETCAR]"] = { _config = { gtype = "org", salario = 4000, orgName = "Competcar" }, "perm.lidercompetcar", "perm.competcar", "perm.mecanico", "perm.dv", "perm.legal", "perm.dv"},
	["Gerente [COMPETCAR]"] = { _config = { gtype = "org", salario = 3000, orgName = "Competcar" }, "perm.lidercompetcar", "perm.competcar", "perm.mecanico", "perm.legal", "perm.dv"},
	["Sub Gerente [COMPETCAR]"] = { _config = { gtype = "org", salario = 2000, orgName = "Competcar" }, "perm.competcar", "perm.mecanico", "perm.legal", "perm.legal", "perm.dv"},
	["Tunning [COMPETCAR]"] = { _config = { gtype = "org", salario = 1500, orgName = "Competcar" }, "perm.competcar", "perm.mecanico", "perm.legal", "perm.dv"},
	["Mecanico [COMPETCAR]"] = { _config = { gtype = "org", salario = 1000, orgName = "Competcar" }, "perm.competcar", "perm.mecanico", "perm.legal", "perm.dv"},
	["Funcionario [COMPETCAR]"] = { _config = { gtype = "org", salario = 500, orgName = "Competcar" }, "perm.competcar","perm.mecanico", "perm.legal", "perm.dv"},

	-- ABELVOLKS
	["Lider [ABELVOLKS]"] = { _config = { gtype = "org", salario = 4000, orgName = "Abelvolks" }, "perm.liderabelvolks", "perm.abelvolks", "perm.mecanico", "perm.dv", "perm.legal", "perm.dv"},
	["Gerente [ABELVOLKS]"] = { _config = { gtype = "org", salario = 3000, orgName = "Abelvolks" }, "perm.abelvolks", "perm.abelvolks", "perm.mecanico", "perm.legal", "perm.dv"},
	["Tunning [ABELVOLKS]"] = { _config = { gtype = "org", salario = 1500, orgName = "Abelvolks" }, "perm.abelvolks", "perm.mecanico", "perm.legal", "perm.dv"},
	["Mecanico [ABELVOLKS]"] = { _config = { gtype = "org", salario = 1000, orgName = "Abelvolks" }, "perm.abelvolks", "perm.mecanico", "perm.legal", "perm.dv"},
	["Funcionario [ABELVOLKS]"] = { _config = { gtype = "org", salario = 500, orgName = "Abelvolks" }, "perm.abelvolks", "perm.mecanico", "perm.legal", "perm.dv"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DROGAS E ETC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- TURQUIA
	["Lider [TURQUIA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Turquia" }, "perm.lider.turquia", "perm.turquia", "perm.ilegal", "perm.dv"},
	["Sub Lider [TURQUIA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Turquia" }, "perm.lider.turquia", "perm.turquia", "perm.ilegal"},
	["Gerente [TURQUIA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Turquia" }, "perm.turquia", "perm.ilegal"},
	["Membro [TURQUIA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Turquia" }, "perm.turquia", "perm.ilegal"},

	-- COREIA  ----  NOVA-ESPERANCA
	["Lider [NOVA-ESPERANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Novaesperanca" }, "perm.lider.novaesperanca", "perm.novaesperanca", "perm.ilegal", "perm.dv", "perm.recrutamentonova"},
	["Sub Lider [NOVA-ESPERANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Novaesperanca" }, "perm.lider.novaesperanca", "perm.novaesperanca", "perm.ilegal"},
	["Gerente [NOVA-ESPERANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Novaesperanca" }, "perm.novaesperanca", "perm.ilegal"},
	["Membro [NOVA-ESPERANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Novaesperanca" }, "perm.novaesperanca", "perm.ilegal"},

	-- EGITO   - TIRADENTES
	["Lider [TIRADENTES]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tiradentes" }, "perm.lider.tiradentes", "perm.tiradentes", "perm.ilegal", "perm.dv"},
	["Sub Lider [TIRADENTES]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tiradentes" }, "perm.lider.tiradentes", "perm.tiradentes", "perm.ilegal"},
	["Gerente [TIRADENTES]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tiradentes" }, "perm.tiradentes", "perm.ilegal"},
	["Membro [TIRADENTES]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tiradentes" }, "perm.tiradentes", "perm.ilegal"},

	-- EMILIOPOVOA
	["Lider [EMILIOPOVOA]"] = { _config = { gtype = "org", salario = 5000, orgName = "EmilioPovoa" }, "perm.lider.emiliopovoa", "perm.emiliopovoa", "perm.ilegal", "perm.dv"},
	["Sub Lider [EMILIOPOVOA]"] = { _config = { gtype = "org", salario = 5000, orgName = "EmilioPovoa" }, "perm.lider.emiliopovoa", "perm.emiliopovoa", "perm.ilegal"},
	["Gerente [EMILIOPOVOA]"] = { _config = { gtype = "org", salario = 5000, orgName = "EmilioPovoa" }, "perm.emiliopovoa", "perm.ilegal"},
	["Membro [EMILIOPOVOA]"] = { _config = { gtype = "org", salario = 5000, orgName = "EmilioPovoa" }, "perm.emiliopovoa", "perm.ilegal"},

	-- VIETNA PARQUE OESTE
	["Lider [PARQUE-OESTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Parqueoeste" }, "perm.lider.parqueoeste", "perm.parqueoeste", "perm.ilegal", "perm.dv"},
	["Sub Lider [PARQUE-OESTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Parqueoeste" }, "perm.lider.parqueoeste", "perm.parqueoeste", "perm.ilegal"},
	["Gerente [PARQUE-OESTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Parqueoeste" }, "perm.parqueoeste", "perm.ilegal"},
	["Membro [PARQUE-OESTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Parqueoeste" }, "perm.parqueoeste", "perm.ilegal"},

	-- QUEBRACAIXOTE
	["Lider [QUEBRACAIXOTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "QuebraCaixote" }, "perm.lider.quebracaixote", "perm.quebracaixote", "perm.ilegal", "perm.dv"},
	["Sub Lider [QUEBRACAIXOTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "QuebraCaixote" }, "perm.lider.quebracaixote", "perm.quebracaixote", "perm.ilegal"},
	["Gerente [QUEBRACAIXOTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "QuebraCaixote" }, "perm.quebracaixote", "perm.ilegal"},
	["Membro [QUEBRACAIXOTE]"] = { _config = { gtype = "org", salario = 5000, orgName = "QuebraCaixote" }, "perm.quebracaixote", "perm.ilegal"},

	-- FRANCA VERA-CRUZ
	["Lider [VERA-CRUZ]"] = { _config = { gtype = "org", salario = 5000, orgName = "Veracruz" }, "perm.lider.veracruz", "perm.veracruz", "perm.ilegal", "perm.dv", "perm.recrutamentoveracruz"},
	["Sub Lider [VERA-CRUZ]"] = { _config = { gtype = "org", salario = 5000, orgName = "Veracruz" }, "perm.lider.veracruz", "perm.veracruz", "perm.ilegal"},
	["Gerente [VERA-CRUZ]"] = { _config = { gtype = "org", salario = 5000, orgName = "Veracruz" }, "perm.veracruz", "perm.ilegal"},
	["Membro [VERA-CRUZ]"] = { _config = { gtype = "org", salario = 5000, orgName = "Veracruz" }, "perm.veracruz", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LAVAGEM E ETC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- CASSINO
	["Lider [CASSINO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Cassino" }, "perm.lider.cassino", "perm.cassino", "perm.ilegal", "perm.dv"},
	["Sub Lider [CASSINO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Cassino" }, "perm.lider.cassino", "perm.cassino", "perm.ilegal"},
	["Gerente [CASSINO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Cassino" }, "perm.cassino", "perm.ilegal"},
	["Membro [CASSINO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Cassino" }, "perm.cassino", "perm.ilegal"},

	-- RED LINE
	["Lider [RED-LINE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Redline" }, "perm.lider.redline", "perm.redline", "perm.ilegal", "perm.dv"},
	["Sub Lider [RED-LINE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Redline" }, "perm.lider.redline", "perm.redline", "perm.ilegal"},
	["Gerente [RED-LINE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Redline" }, "perm.redline", "perm.ilegal"},
	["Membro [RED-LINE]"] = { _config = { gtype = "org", salario = 5000, orgName = "Redline" }, "perm.redline", "perm.ilegal"},

	-- VINHEDO   -- GARAVELO
	["Lider [BAHAMAS]"] = { _config = { gtype = "org", salario = 5000, orgName = "Bahamas" }, "perm.lider.bahamas", "perm.bahamas", "perm.ilegal", "perm.dv", "perm.recrutamentobahamas"},
	["Sub Lider [BAHAMAS]"] = { _config = { gtype = "org", salario = 5000, orgName = "Bahamas" }, "perm.lider.bahamas", "perm.bahamas", "perm.ilegal"},
	["Gerente [BAHAMAS]"] = { _config = { gtype = "org", salario = 5000, orgName = "Bahamas" }, "perm.bahamas", "perm.ilegal"},
	["Membro [BAHAMAS]"] = { _config = { gtype = "org", salario = 5000, orgName = "Bahamas" }, "perm.bahamas", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MUNICAO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- YAKUZA ---- RECANTO-DO-SOL -- yakuza
	["Lider [YAKUZA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Yakuza" }, "perm.lider.yakuza", "perm.yakuza", "perm.ilegal", "perm.dv", "perm.recrutamentoyakuza"},
	["Sub Lider [YAKUZA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Yakuza" }, "perm.lider.yakuza", "perm.yakuza", "perm.ilegal"},
	["Gerente [YAKUZA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Yakuza" }, "perm.yakuza", "perm.lider.yakuza", "perm.ilegal"},
	["Membro [YAKUZA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Yakuza" }, "perm.yakuza", "perm.ilegal"},

	-- CARTEL    -- BUENA-VISTA
	["Lider [BUENA-VISTA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Buenavista" }, "perm.lider.buenavista", "perm.buenavista", "perm.ilegal", "perm.dv"},
	["Sub Lider [BUENA-VISTA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Buenavista" }, "perm.lider.buenavista", "perm.buenavista", "perm.ilegal"},
	["Gerente [BUENA-VISTA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Buenavista" }, "perm.buenavista", "perm.ilegal"},
	["Membro [BUENA-VISTA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Buenavista" }, "perm.buenavista", "perm.ilegal"},

	-- VOVO 
	["Lider [VOVO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vovo" }, "perm.lider.vovo", "perm.vovo", "perm.ilegal", "perm.dv", "perm.recrutamentovovo"},
	["Sub Lider [VOVO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vovo" }, "perm.lider.vovo", "perm.vovo", "perm.ilegal"},
	["Gerente [VOVO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vovo" }, "perm.vovo", "perm.ilegal"},
	["Membro [VOVO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vovo" }, "perm.vovo", "perm.ilegal"},

	["Lider [MORRODOCHAPADAO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Chapadao" }, "perm.lider.chapadao", "perm.chapadao", "perm.ilegal", "perm.dv", "perm.recrutamentochapadao"},
	["Sub Lider [MORRODOCHAPADAO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Chapadao" }, "perm.lider.chapadao", "perm.vovo", "perm.ilegal"},
	["Gerente [MORRODOCHAPADAO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Chapadao" }, "perm.chapadao", "perm.lider.chapadao", "perm.ilegal"},
	["Membro [MORRODOCHAPADAO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Chapadao" }, "perm.chapadao", "perm.ilegal"},

	-- FRANCA 
	["Lider [FRANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Franca" }, "perm.lider.franca", "perm.franca", "perm.ilegal", "perm.dv", "perm.recrutamentofranca"},
	["Sub Lider [FRANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Franca" }, "perm.lider.franca", "perm.franca", "perm.ilegal"},
	["Gerente [FRANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Franca" }, "perm.franca", "perm.lider.franca", "perm.ilegal"},
	["Membro [FRANCA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Franca" }, "perm.franca", "perm.ilegal"},

	-- GROTA
	["Lider [GROTA]"] = { _config = { gtype = "org", salario = 17000, orgName = "Grota" }, "perm.lider.grota", "perm.grota", "perm.ilegal", "perm.dv", "perm.peneu", "perm.recrutamentogrota"},
	["Sub Lider [GROTA]"] = { _config = { gtype = "org", salario = 17000, orgName = "Grota" }, "perm.lider.grota", "perm.grota", "perm.ilegal"},
	["Gerente [GROTA]"] = { _config = { gtype = "org", salario = 17000, orgName = "Grota" }, "perm.lider.grota", "perm.grota", "perm.ilegal"},
	["Membro [GROTA]"] = { _config = { gtype = "org", salario = 17000, orgName = "Grota" }, "perm.grota", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DESMANCHE / LOCKPICK
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- CARTEL
	["Lider [CARTEL]"] = { _config = { gtype = "org", salario = 17000, orgName = "Cartel" }, "perm.lider.cartel", "perm.cartel", "perm.ilegal", "perm.dv"},
	["Sub Lider [CARTEL]"] = { _config = { gtype = "org", salario = 17000, orgName = "Cartel" }, "perm.lider.cartel", "perm.cartel", "perm.ilegal"},
	["Gerente [CARTEL]"] = { _config = { gtype = "org", salario = 17000, orgName = "Cartel" }, "perm.cartel", "perm.ilegal"},
	["Membro [CARTEL]"] = { _config = { gtype = "org", salario = 17000, orgName = "Cartel" }, "perm.cartel", "perm.ilegal"},

	-- MOTOCLUB --- VILA CANAA
	["Lider [VILA-CANAA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vilacanaa" }, "perm.lider.vilacanaa", "perm.vilacanaa", "perm.ilegal", "perm.dv", "perm.recrutamentovilacanaa"},
	["Gerente [VILA-CANAA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vilacanaa" }, "perm.vilacanaa", "perm.ilegal"},
	["Membro [VILA-CANAA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Vilacanaa" }, "perm.vilacanaa", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ARMAS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- MAFIA  -jardimnovomundo
	["Lider [BRASIL]"] = { _config = { gtype = "org", salario = 10000, orgName = "Brasil" }, "perm.brasil", "perm.lider.brasil", "perm.ilegal", "perm.dv", "perm.recrutamentobrasil"},
	["Sub Lider [BRASIL]"] = { _config = { gtype = "org", salario = 10000, orgName = "Brasil" }, "perm.brasil", "perm.lider.brasil", "perm.ilegal"},
	["Gerente [BRASIL]"] = { _config = { gtype = "org", salario = 10000, orgName = "Brasil" }, "perm.brasil", "perm.ilegal"},
	["Membro [BRASIL]"] = { _config = { gtype = "org", salario = 10000, orgName = "Brasil" }, "perm.brasil", "perm.ilegal"},

	-- SINDICATO   --- 
	["Lider [LAGUNA-PARK]"] = { _config = { gtype = "org", salario = 5000, orgName = "Lagunapark" }, "perm.lider.lagunapark", "perm.lagunapark", "perm.ilegal", "perm.dv", "perm.recrutamentolagunapark"},
	["Sub Lider [LAGUNA-PARK]"] = { _config = { gtype = "org", salario = 5000, orgName = "Lagunapark" }, "perm.lider.lagunapark", "perm.lagunapark", "perm.ilegal"},
	["Gerente [LAGUNA-PARK]"] = { _config = { gtype = "org", salario = 5000, orgName = "Lagunapark" }, "perm.lagunapark", "perm.ilegal"},
	["Membro [LAGUNA-PARK]"] = { _config = { gtype = "org", salario = 5000, orgName = "Lagunapark" }, "perm.lagunapark", "perm.ilegal"},

	-- mafia
	["Lider [MAFIA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Mafia" }, "perm.lider.mafia", "perm.mafia", "perm.ilegal", "perm.dv", "perm.peneu"},
	["Sub Lider [MAFIA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Mafia" }, "perm.lider.mafia", "perm.mafia", "perm.ilegal"},
	["Gerente [MAFIA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Mafia" }, "perm.mafia", "perm.ilegal"},
	["Membro [MAFIA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Mafia" }, "perm.mafia", "perm.ilegal"},

	-- HELIPA
	["Lider [HELIPA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Helipa" }, "perm.lider.helipa", "perm.helipa", "perm.ilegal", "perm.dv", "perm.peneu", "perm.recrutamentohelipa"},
	["Sub Lider [HELIPA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Helipa" }, "perm.lider.helipa", "perm.helipa", "perm.ilegal"},
	["Gerente [HELIPA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Helipa" }, "perm.helipa", "perm.lider.helipa", "perm.ilegal"},
	["Membro [HELIPA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Helipa" }, "perm.helipa", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MUAMBA
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- TEQUILA
	["Lider [TEQUILA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tequila" }, "perm.lider.tequila", "perm.tequila", "perm.ilegal", "perm.dv", "perm.recrutamentotequila"},
	["Sub Lider [TEQUILA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tequila" }, "perm.lider.tequila", "perm.tequila", "perm.ilegal"},
	["Gerente [TEQUILA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tequila" }, "perm.tequila", "perm.ilegal"},
	["Membro [TEQUILA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Tequila" }, "perm.tequila", "perm.ilegal"},

	-- LARANJAS  -  MADRE GERMANO
	["Lider [MADRE-GERMANO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Madregermano" }, "perm.lider.madregermano", "perm.madregermano", "perm.ilegal", "perm.dv"},
	["Sub Lider [MADRE-GERMANO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Madregermano" }, "perm.lider.madregermano", "perm.madregermano", "perm.ilegal"},
	["Gerente [MADRE-GERMANO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Madregermano" }, "perm.madregermano", "perm.ilegal"},
	["Membro [MADRE-GERMANO]"] = { _config = { gtype = "org", salario = 5000, orgName = "Madregermano" }, "perm.madregermano", "perm.ilegal"},

	-- CV
	["Lider [CV]"] = { _config = { gtype = "org", salario = 5000, orgName = "CV" }, "perm.lider.cv", "perm.cv", "perm.ilegal", "perm.dv"},
	["Sub Lider [CV]"] = { _config = { gtype = "org", salario = 5000, orgName = "CV" }, "perm.lider.cv", "perm.cv", "perm.ilegal"},
	["Gerente [CV]"] = { _config = { gtype = "org", salario = 5000, orgName = "CV" }, "perm.cv", "perm.ilegal"},
	["Membro [CV]"] = { _config = { gtype = "org", salario = 5000, orgName = "CV" }, "perm.cv", "perm.ilegal"},

	-- CAIXABAIXA
	["Lider [CAIXABAIXA]"] = { _config = { gtype = "org", salario = 5000, orgName = "CaixaBaixa" }, "perm.lider.caixabaixa", "perm.caixabaixa", "perm.ilegal", "perm.dv"},
	["Sub Lider [CAIXABAIXA]"] = { _config = { gtype = "org", salario = 5000, orgName = "CaixaBaixa" }, "perm.lider.caixabaixa", "perm.caixabaixa", "perm.ilegal"},
	["Gerente [CAIXABAIXA]"] = { _config = { gtype = "org", salario = 5000, orgName = "CaixaBaixa" }, "perm.caixabaixa", "perm.ilegal"},
	["Membro [CAIXABAIXA]"] = { _config = { gtype = "org", salario = 5000, orgName = "CaixaBaixa" }, "perm.caixabaixa", "perm.ilegal"},

	-- MANSÃO WEB
	["Lider [WEB]"] = { _config = { gtype = "org", salario = 5000, orgName = "Web" }, "perm.lider.web", "perm.web", "perm.ilegal", "perm.dv"},
	["Sub Lider [WEB]"] = { _config = { gtype = "org", salario = 5000, orgName = "Web" }, "perm.lider.web", "perm.web", "perm.ilegal"},
	["Gerente [WEB]"] = { _config = { gtype = "org", salario = 5000, orgName = "Web" }, "perm.web", "perm.ilegal"},
	["Membro [WEB]"] = { _config = { gtype = "org", salario = 5000, orgName = "Web" }, "perm.web", "perm.ilegal"},

	-- MACACO
	["Lider [MACACOMORRO]"] = { _config = { gtype = "org", salario = 15000, orgName = "MacacoMorro" }, "perm.lider.macaco", "perm.macaco", "perm.ilegal", "perm.dv", "perm.recrutamentomacaco"},
	["Sub Lider [MACACOMORRO]"] = { _config = { gtype = "org", salario = 15000, orgName = "MacacoMorro" }, "perm.lider.macaco", "perm.macaco", "perm.ilegal"},
	["Gerente [MACACOMORRO]"] = { _config = { gtype = "org", salario = 15000, orgName = "MacacoMorro" }, "perm.macaco", "perm.ilegal"},
	["Membro [MACACOMORRO]"] = { _config = { gtype = "org", salario = 15000, orgName = "MacacoMorro" }, "perm.macaco", "perm.ilegal"},

	----- MACACO
	---["Lider [MORRODOMACACO]"] = { _config = { gtype = "org", salario = 15000, orgName = "Macaco" }, "perm.lider.macaco", "perm.macaco", "perm.ilegal", "perm.dv", "perm.recrutamentomacaco"},
	---["Sub Lider [MORRODOMACACO]"] = { _config = { gtype = "org", salario = 15000, orgName = "Macaco" }, "perm.lider.macaco", "perm.macaco", "perm.ilegal"},
	---["Gerente [MORRODOMACACO]"] = { _config = { gtype = "org", salario = 15000, orgName = "Macaco" }, "perm.macaco", "perm.ilegal"},
	---["Membro [MORRODOMACACO]"] = { _config = { gtype = "org", salario = 15000, orgName = "Macaco" }, "perm.macaco", "perm.ilegal"},
}

cfg.users = {
	--[1] = { "developer" },
	[2] = { "developer" },
	[3] = { "developer" },
	[447] = { "developer" },
	[715] = { "developer" },
}

cfg.selectors = { }

return cfg
