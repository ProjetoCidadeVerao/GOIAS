local cfg = {}

cfg.groups = {
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ADMINISTRAÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["developer"] = { _config = { gtype = "staff", salario = 8000 }, "admin.permissao", "dv.permissao", "ticket.permissao", "developer.permissao","player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff","player.som", "perm.algemar" },
	["developeroff"] = { _config = { gtype = "staff", salario = 8000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["admin"] = { _config = { gtype = "staff", salario = 6000 }, "admin.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["adminoff"] = { _config = { gtype = "staff", salario = 6000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderador"] = { _config = { gtype = "staff", salario = 4000 }, "moderador.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderadoroff"] = { _config = { gtype = "staff", salario = 4000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporte"] = { _config = { gtype = "staff", salario = 2000 }, "suporte.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporteoff"] = { _config = { gtype = "staff", salario = 2000 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["user"] = { "perm.user"},
	["streamer"] = { _config = { gtype = "staff" }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall", "mqcu.permissao", "streamer.permissao", "perm.algemar" },
	["investidoranjo"] = { _config = { gtype = "staff" }, "investidoranjo.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VIPS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Bronze"] = { _config = { gtype = "Bronze", salario = 2000 }, "perm.vips", "perm.bronze" },
	["Prata"] = { _config = { gtype = "Prata", salario = 4000 }, "perm.vips", "perm.prata" },
	["Ouro"] = { _config = { gtype = "Ouro", salario = 6000 }, "perm.vips", "perm.ouro" },
	["Platina"] = { _config = { gtype = "Platina", salario = 8000 }, "perm.vips", "perm.platina" },
	["Diamante"] = { _config = { gtype = "Diamante", salario = 10000 }, "perm.vips", "perm.diamante" },
	["Ruby"] = { _config = { gtype = "Ruby", salario = 15000 }, "perm.vips", "perm.ruby" },
	["Safira"] = { _config = { gtype = "Safira", salario = 17000 }, "perm.vips", "perm.safira" },
	["Green"] = { _config = { gtype = "Green", salario = 20000 }, "perm.vips", "perm.green" },
	["Black"] = { _config = { gtype = "Black", salario = 25000 }, "perm.vips", "perm.black" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BENEFICIOS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Verificado"] = { _config = { salario = nil }, "perm.verificado"},
	["valecasa"] = { _config = { salario = nil }, "valecasa.permissao"}, 
	["valegaragem"] = { _config = { salario = nil }, "valegaragem.permissao"}, 
	["manobras"] = { _config = { salario = nil }, "perm.manobras"}, 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["paintball"] = { _config = { salario = nil }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall" },
	["Porte de Armas"] = { _config = { salario = nil }, "perm.portearmas" },
	["Paisana"] = { _config = { salario = nil }, "-perm.hospital", "-perm.policia" },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
	["Lider [CDT]"] = { _config = { gtype = "org", salario = nil, orgName = "CDT" }, "perm.lider.cdt", "perm.cdt"},
	["Gerente [CDT]"] = { _config = { gtype = "org", salario = nil, orgName = "CDT" }, "perm.cdt"},
	["Membro [CDT]"] = { _config = { gtype = "org", salario = nil, orgName = "CDT" }, "perm.cdt"},

	["Lider [FRANCA]"] = { _config = { gtype = "org", salario = nil, orgName = "Franca" }, "perm.lider.franca", "perm.franca"},
	["Gerente [FRANCA]"] = { _config = { gtype = "org", salario = nil, orgName = "Franca" }, "perm.franca"},
	["Membro [FRANCA]"] = { _config = { gtype = "org", salario = nil, orgName = "Franca" }, "perm.franca"},

	["Lider [GROVE]"] = { _config = { gtype = "org", salario = nil, orgName = "Grove" }, "perm.lider.grove", "perm.grove"},
	["Gerente [GROVE]"] = { _config = { gtype = "org", salario = nil, orgName = "Grove" }, "perm.grove"},
	["Membro [GROVE]"] = { _config = { gtype = "org", salario = nil, orgName = "Grove" }, "perm.grove"},

	["Lider [MEDELIN]"] = { _config = { gtype = "org", salario = nil, orgName = "Medelin" }, "perm.lider.medelin", "perm.medelin"},
	["Gerente [MEDELIN]"] = { _config = { gtype = "org", salario = nil, orgName = "Medelin" }, "perm.medelin"},
	["Membro [MEDELIN]"] = { _config = { gtype = "org", salario = nil, orgName = "Medelin" }, "perm.medelin"},

	["Lider [ROXOS]"] = { _config = { gtype = "org", salario = nil, orgName = "Roxos" }, "perm.lider.roxos", "perm.roxos"},
	["Gerente [ROXOS]"] = { _config = { gtype = "org", salario = nil, orgName = "Roxos" }, "perm.roxos"},
	["Membro [ROXOS]"] = { _config = { gtype = "org", salario = nil, orgName = "Roxos" }, "perm.roxos"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LAVAGEM E ETC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [NEXTLEVEL]"] = { _config = { gtype = "org", salario = nil, orgName = "Next Level" }, "perm.lider.nextlevel", "perm.nextlevel"},
	["Gerente [NEXTLEVEL]"] = { _config = { gtype = "org", salario = nil, orgName = "Next Level" }, "perm.nextlevel"},
	["Membro [NEXTLEVEL]"] = { _config = { gtype = "org", salario = nil, orgName = "Next Level" }, "perm.nextlevel"},

	["Lider [VANILLA]"] = { _config = { gtype = "org", salario = nil, orgName = "Vanilla" }, "perm.lider.vanilla", "perm.vanilla"},
	["Gerente [VANILLA]"] = { _config = { gtype = "org", salario = nil, orgName = "Vanilla" }, "perm.vanilla"},
	["Membro [VANILLA]"] = { _config = { gtype = "org", salario = nil, orgName = "Vanilla" }, "perm.vanilla"},

	["Lider [TEQUILALA]"] = { _config = { gtype = "org", salario = nil, orgName = "Tequilala" }, "perm.lider.tequilala", "perm.tequilala"},
	["Gerente [TEQUILALA]"] = { _config = { gtype = "org", salario = nil, orgName = "Tequilala" }, "perm.tequilala"},
	["Membro [TEQUILALA]"] = { _config = { gtype = "org", salario = nil, orgName = "Tequilala" }, "perm.tequilala"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MUNICAO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [TOKYO]"] = { _config = { gtype = "org", salario = nil, orgName = "Tokyo" }, "perm.lider.tokyo", "perm.tokyo"},
	["Gerente [TOKYO]"] = { _config = { gtype = "org", salario = nil, orgName = "Tokyo" }, "perm.tokyo"},
	["Membro [TOKYO]"] = { _config = { gtype = "org", salario = nil, orgName = "Tokyo" }, "perm.tokyo"},

	["Lider [ROSES]"] = { _config = { gtype = "org", salario = nil, orgName = "Roses" }, "perm.lider.roses", "perm.roses"},
	["Gerente [ROSES]"] = { _config = { gtype = "org", salario = nil, orgName = "Roses" }, "perm.roses"},
	["Membro [ROSES]"] = { _config = { gtype = "org", salario = nil, orgName = "Roses" }, "perm.roses"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DESMANCHE / LOCKPICK
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [REDNECK]"] = { _config = { gtype = "org", salario = nil, orgName = "RedNeck" }, "perm.lider.redneck", "perm.redneck"},
	["Gerente [REDNECK]"] = { _config = { gtype = "org", salario = nil, orgName = "RedNeck" }, "perm.redneck"},
	["Membro [REDNECK]"] = { _config = { gtype = "org", salario = nil, orgName = "RedNeck" }, "perm.redneck"},

	["Lider [EGITO]"] = { _config = { gtype = "org", salario = nil, orgName = "Egito" }, "perm.lider.egito", "perm.egito"},
	["Gerente [EGITO]"] = { _config = { gtype = "org", salario = nil, orgName = "Egito" }, "perm.egito"},
	["Membro [EGITO]"] = { _config = { gtype = "org", salario = nil, orgName = "Egito" }, "perm.egito"},

	["Lider [JACKAL]"] = { _config = { gtype = "org", salario = nil, orgName = "Jackal" }, "perm.lider.jackal", "perm.jackal"},
	["Gerente [JACKAL]"] = { _config = { gtype = "org", salario = nil, orgName = "Jackal" }, "perm.jackal"},
	["Membro [JACKAL]"] = { _config = { gtype = "org", salario = nil, orgName = "Jackal" }, "perm.jackal"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ARMAS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [MAFIA]"] = { _config = { gtype = "org", salario = nil, orgName = "Mafia" }, "perm.lider.mafia", "perm.mafia"},
	["Gerente [MAFIA]"] = { _config = { gtype = "org", salario = nil, orgName = "Mafia" }, "perm.mafia"},
	["Membro [MAFIA]"] = { _config = { gtype = "org", salario = nil, orgName = "Mafia" }, "perm.mafia"},

	["Lider [MOTOCLUBE]"] = { _config = { gtype = "org", salario = nil, orgName = "MotoClube" }, "perm.lider.motoclube", "perm.motoclube"},
	["Gerente [MOTOCLUBE]"] = { _config = { gtype = "org", salario = nil, orgName = "MotoClube" }, "perm.motoclube"},
	["Membro [MOTOCLUBE]"] = { _config = { gtype = "org", salario = nil, orgName = "MotoClube" }, "perm.motoclube"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [CUPULA]"] = { _config = { gtype = "org", salario = nil, orgName = "Cupula" }, "perm.lider.cupula", "perm.cupula"},
	["Gerente [CUPULA]"] = { _config = { gtype = "org", salario = nil, orgName = "Cupula" }, "perm.cupula"},
	["Membro [CUPULA]"] = { _config = { gtype = "org", salario = nil, orgName = "Cupula" }, "perm.cupula"},
}

cfg.users = {
	[1] = { "developer" },
	[2] = { "developer" },
	[3] = { "developer" },
}

cfg.selectors = { }

return cfg
