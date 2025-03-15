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
	["Comando [POLICIA]"] = { _config = { gtype = "org", salario = 15000, orgName = "Policia" }, "perm.liderpolicia", "perm.policia"},	
	["Sub-Comando [POLICIA]"] = { _config = { gtype = "org", salario = 14000, orgName = "Policia" }, "perm.liderpolicia", "perm.policia"},	
	["Coronel [POLICIA]"] = { _config = { gtype = "org", salario = 13000, orgName = "Policia" }, "perm.liderpolicia", "perm.policia"},	
	["Tenente Coronel [POLICIA]"] = { _config = { gtype = "org", salario = 12000, orgName = "Policia" }, "perm.policia"},	
	["Major [POLICIA]"] = { _config = { gtype = "org", salario = 11000, orgName = "Policia" }, "perm.policia"},	
	["Capitao [POLICIA]"] = { _config = { gtype = "org", salario = 10000, orgName = "Policia" }, "perm.policia"},	
	["1 Tenente [POLICIA]"] = { _config = { gtype = "org", salario = 9000, orgName = "Policia" }, "perm.policia"},	
	["2 Tenente [POLICIA]"] = { _config = { gtype = "org", salario = 8000, orgName = "Policia" }, "perm.policia"},	
	["Cadete [POLICIA]"] = { _config = { gtype = "org", salario = 7000, orgName = "Policia" }, "perm.policia"},	
	["Sub Tenente [POLICIA]"] = { _config = { gtype = "org", salario = 6000, orgName = "Policia" }, "perm.policia"},	
	["1 Sargento [POLICIA]"] = { _config = { gtype = "org", salario = 5000, orgName = "Policia" }, "perm.policia"},	
	["2 Sargento [POLICIA]"] = { _config = { gtype = "org", salario = 4000, orgName = "Policia" }, "perm.policia"},	
	["3 Sargento [POLICIA]"] = { _config = { gtype = "org", salario = 3000, orgName = "Policia" }, "perm.policia"},	
	["Cabo [POLICIA]"] = { _config = { gtype = "org", salario = 2000, orgName = "Policia" }, "perm.policia"},	
	["Soldado [POLICIA]"] = { _config = { gtype = "org", salario = 2000, orgName = "Policia" }, "perm.policia"},	
	["Penal [POLICIA]"] = { _config = { gtype = "org", salario = 1000, orgName = "Policia" }, "perm.policia"},	

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Hospital
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Presidente [HOSPITAL]"] = { _config = { gtype = "org", salario = 8000, orgName = "Hospital" }, "perm.liderhospital", "perm.hospital"},	
	["Diretor [HOSPITAL]"] = { _config = { gtype = "org", salario = 7000, orgName = "Hospital" }, "perm.liderhospital", "perm.hospital"},
	["Vice-Diretor [HOSPITAL]"] = { _config = { gtype = "org", salario = 6000, orgName = "Hospital" }, "perm.hospital"},
	["Medico-Chefe [HOSPITAL]"] = { _config = { gtype = "org", salario = 5000, orgName = "Hospital" }, "perm.hospital"},
	["Medico [HOSPITAL]"] = { _config = { gtype = "org", salario = 4000, orgName = "Hospital" }, "perm.hospital"},
	["Paramedico [HOSPITAL]"] = { _config = { gtype = "org", salario = 3000, orgName = "Hospital" }, "perm.hospital"},
	["Enfermeiro-Chefe [HOSPITAL]"] = { _config = { gtype = "org", salario = 2000, orgName = "Hospital" }, "perm.hospital"},
	["Enfermeiro [HOSPITAL]"] = { _config = { gtype = "org", salario = 1000, orgName = "Hospital" }, "perm.hospital"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mecanica TexasRace
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [TEXAS RACE]"] = { _config = { gtype = "org", salario = 4000, orgName = "Texas Race" }, "perm.lidertaxasrace", "perm.taxasrace"},
	["Gerente [TEXAS RACE]"] = { _config = { gtype = "org", salario = 3000, orgName = "Texas Race" }, "perm.lidertaxasrace", "perm.taxasrace"},
	["Sub Gerente [TEXAS RACE]"] = { _config = { gtype = "org", salario = 2000, orgName = "Texas Race" }, "perm.taxasrace"},
	["Tunning [TEXAS RACE]"] = { _config = { gtype = "org", salario = 1500, orgName = "Texas Race" }, "perm.taxasrace"},
	["Mecanico [TEXAS RACE]"] = { _config = { gtype = "org", salario = 1000, orgName = "Texas Race" }, "perm.taxasrace"},
	["Funcionario [TEXAS RACE]"] = { _config = { gtype = "org", salario = 500, orgName = "Texas Race" }, "perm.taxasrace"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mecanica TexasRace
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [TEXAS PORTO]"] = { _config = { gtype = "org", salario = 4000, orgName = "Texas Porto" }, "perm.lidertaxasporto", "perm.taxasporto"},
	["Gerente [TEXAS PORTO]"] = { _config = { gtype = "org", salario = 3000, orgName = "Texas Porto" }, "perm.lidertaxasporto", "perm.taxasporto"},
	["Sub Gerente [TEXAS PORTO]"] = { _config = { gtype = "org", salario = 2000, orgName = "Texas Porto" }, "perm.taxasporto"},
	["Tunning [TEXAS PORTO]"] = { _config = { gtype = "org", salario = 1500, orgName = "Texas Porto" }, "perm.taxasporto"},
	["Mecanico [TEXAS PORTO]"] = { _config = { gtype = "org", salario = 1000, orgName = "Texas Porto" }, "perm.taxasporto"},
	["Funcionario [TEXAS PORTO]"] = { _config = { gtype = "org", salario = 500, orgName = "Texas Porto" }, "perm.taxasporto"},
	
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mecanica AutoSport
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [AUTO SPORT]"] = { _config = { gtype = "org", salario = 4000, orgName = "Auto Sport" }, "perm.liderautosport", "perm.autosport"},
	["Gerente [AUTO SPORT]"] = { _config = { gtype = "org", salario = 3000, orgName = "Auto Sport" }, "perm.autosport", "perm.autosport"},
	["Tunning [AUTO SPORT]"] = { _config = { gtype = "org", salario = 1500, orgName = "Auto Sport" }, "perm.autosport"},
	["Mecanico [AUTO SPORT]"] = { _config = { gtype = "org", salario = 1000, orgName = "Auto Sport" }, "perm.autosport"},
	["Funcionario [AUTO SPORT]"] = { _config = { gtype = "org", salario = 500, orgName = "Auto Sport" }, "perm.autosport"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mecanica SportRace
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [SPORT RACE]"] = { _config = { gtype = "org", salario = 4000, orgName = "Sport Race" }, "perm.lidersportrace", "perm.sportrace"},
	["Gerente [SPORT RACE]"] = { _config = { gtype = "org", salario = 3000, orgName = "Sport Race" }, "perm.lidersportrace", "perm.sportrace"},
	["Sub Gerente [SPORT RACE]"] = { _config = { gtype = "org", salario = 2000, orgName = "Sport Race" }, "perm.sportrace"},
	["Tunning [SPORT RACE]"] = { _config = { gtype = "org", salario = 1500, orgName = "Sport Race" }, "perm.sportrace"},
	["Mecanico [SPORT RACE]"] = { _config = { gtype = "org", salario = 1000, orgName = "Sport Race" }, "perm.sportrace"},
	["Funcionario [SPORT RACE]"] = { _config = { gtype = "org", salario = 500, orgName = "Sport Race" }, "perm.sportrace"},

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
