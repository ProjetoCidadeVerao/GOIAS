-- [ CONFIGURAÇÕES ] --
moduleconfig = {}

moduleconfig.config = {  
	license = {
		licensekey = "KWS9QI-E2DVSH-7DFSBC-3V3TOT-C0ZNFG", -- INFORME AQUI A SUA LICENÇA
		module_mode = "main" -- NÃO ALTERAR!
	},	
	bot = {
		botaccesskey = "goias" -- INFORME AQUI A CHAVE DO BOT -- [ NECESSÁRIO APENAS SE VOCÊ POSSUIR ESTE MODULO ] --
	},
	modules = { -- HABILITAR [ true ] APENAS OS MODULES QUE VOCÊ JÁ ADQUIRIU
		dom_mortes = true,
		dom_bot = true,
		dom_ban = false,
		auto_rr = false
	},
	apiRR = {
		port = 3000 -- PORTA DA API DE RR AUTOMATICO -- [ NECESSÁRIO APENAS SE VOCÊ POSSUIR ESTE MODULO ] --
	}
}

return moduleconfig