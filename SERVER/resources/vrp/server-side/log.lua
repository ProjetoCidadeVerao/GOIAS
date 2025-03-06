---------------------------------------------------------------------------------------------------------------------------------------------------
-- VRP.WEBHOOK
---------------------------------------------------------------------------------------------------------------------------------------------------
local Salas = {}
---------------------------------------------------------------------------------------------------------------------------------------------------
-- SALAS DE LOGS TEMPORÁRIAS
---------------------------------------------------------------------------------------------------------------------------------------------------
Salas["default"] = "https://discord.com/api/webhooks/1346523208068890707/6F7KjIoEgbwU0zAo4U9gmAAgCwBkr8VlU4wfgqIcbU_PQSCVH15ce2_CwwHclrbMJgMJ"
---------------------------------------------------------------------------------------------------------------------------------------------------
-- SALAS DE LOGS
---------------------------------------------------------------------------------------------------------------------------------------------------
---- [ PLAYERS ] ---------
Salas["entrada"] = "https://discord.com/api/webhooks/1322570725453729842/PRiUTntKRfToY3cIA_wE0czQKipVSx8-77zxcG7xXCwUqyduiRFE1ghpBEKEA4ME_RgZ"
Salas["saida"] = "https://discord.com/api/webhooks/1322570725453729842/PRiUTntKRfToY3cIA_wE0czQKipVSx8-77zxcG7xXCwUqyduiRFE1ghpBEKEA4ME_RgZ"
-- Salas["enviou-item"] = "https://discord.com/api/webhooks/1256327955752161430/9bk-YmP7UundctfHgL7QLTC6IA2CQwAyQkM2sScEh8PNn7ak9TT4i_wK1C40LvHGAQ2K"
-- Salas["dropou-item"] = "https://discord.com/api/webhooks/1256328013352669224/fvWVb_CPZXuOBRLOydb410Ys2P2VrIfkKZ1_stYE1dOnlyB34LOBQUOAwLdj1CxUCS67"
-- Salas["pegou-item"] = "https://discord.com/api/webhooks/1256328059183955968/WRMqFjo4xm5ITt3vRW4d9UTmEaDfP2K94a4peDH-YQmD25UD9GU6QsHjJfnaxO0XXFDS"
-- Salas["guardou-portamala"] = "https://discord.com/api/webhooks/1256328132743663728/XvjzRCa7CwltoQWMZFwvF6qrilRCVF8NQ9gvpYgC7L2TT4ogJw66yhPdMLNz5RCtNtKk"
-- Salas["retirou-portamala"] = "https://discord.com/api/webhooks/1256328132743663728/XvjzRCa7CwltoQWMZFwvF6qrilRCVF8NQ9gvpYgC7L2TT4ogJw66yhPdMLNz5RCtNtKk"
-- Salas["guardou-bau"] = "https://discord.com/api/webhooks/1256328200317833236/BV8aKj27y2I4sjRabx0CVtqV15er5pf2zspwV7mYVRTV0i75DPWOmYrjM6RZG1hDs8Oh"
-- Salas["retirou-bau"] = "https://discord.com/api/webhooks/1256328200317833236/BV8aKj27y2I4sjRabx0CVtqV15er5pf2zspwV7mYVRTV0i75DPWOmYrjM6RZG1hDs8Oh"
-- Salas["compras-lojinhas"] = "https://discord.com/api/webhooks/1256328431994540052/jKxrHHiIQ9lz6pTtRAarygnrtbVyzA_ektsXmMkOjfyzK663x-rmu20z4oY5d7X2XYok"
-- Salas["vendas-lojinhas"] = "https://discord.com/api/webhooks/1256328431994540052/jKxrHHiIQ9lz6pTtRAarygnrtbVyzA_ektsXmMkOjfyzK663x-rmu20z4oY5d7X2XYok"
-- Salas["revistar"] = "https://discord.com/api/webhooks/1256328592875585626/GUfnlh3BBASOUme82A4S3NnR0drONLwgEMF6Cuot-Vp531fFeUnZZ9KKuyyftSr29AQP"
-- Salas["salario"] = "https://discord.com/api/webhooks/1256328654544441404/j29fXQI1Qyhp7pda4r-vh_x5ua7mbI9WU0GXo44EzKPvLTPLMjrxnOxvaW5X4Zgi2mlw"
-- Salas["chamados"] = "https://discord.com/api/webhooks/1256328944752394290/-l0wMh9LXpr3jGMBK_1yyf72HPbk5qOPuVTPOHdNH01nU3iAlNlJ9AejHVPgCg5sefLQ"
-- Salas["roubos"] = "https://discord.com/api/webhooks/1256329014801600705/XCwfj0A6wSU3z_prB2ynjv3m5DcUE3Ql-sQkfxOaPfJItkbQbi2pfuGMyvJb90dVJklo"
-- Salas["rouboscaixaeletronico"] = "https://discord.com/api/webhooks/1256329065531707426/9dD-pgOXg9-sBMB-Ocl7hPjqXX_B_JkuxgcoE99rK3VHDKsGq6iE3UIR4rXt-vp9R0ST"
-- Salas["rouboscaixaregistradora"] = "https://discord.com/api/webhooks/1256329127481442446/l8eicPxVaJ_uxVIsl1JdJju8s9iloqlqwLCD2DuCQ7gFe4FIImhzNzQcRSA1NFJ52vvI"
-- Salas["venda-veiculo"] = "https://discord.com/api/webhooks/1256329241063198760/VbvDP_-0r9QsOZpfswAYRV8RFesEJRUL2AzKT-RxO4qVaIpRfZCSiv4U0d-5Pq-8NWja"
-- Salas["comprou-conce"] = "https://discord.com/api/webhooks/1256329241063198760/VbvDP_-0r9QsOZpfswAYRV8RFesEJRUL2AzKT-RxO4qVaIpRfZCSiv4U0d-5Pq-8NWja"
-- Salas["vendeu-conce"] = "https://discord.com/api/webhooks/1256329241063198760/VbvDP_-0r9QsOZpfswAYRV8RFesEJRUL2AzKT-RxO4qVaIpRfZCSiv4U0d-5Pq-8NWja"
-- Salas["pagou-ipva"] = "https://discord.com/api/webhooks/1256329449503461498/FMry4lv9w83nDFCETASVLdF8rr3xNqyI-XMZ-y8csVYtHfk1Ox_ZRKxkbI2ykiUPKGYC"
-- Salas["pagou-detido"] = ""
-- Salas["pagou-seguro"] = ""
-- Salas["compras-lojinha"] = "https://discord.com/api/webhooks/1265837781582614528/mNe0RAFLBM5_FfyEPCyqDOsKBc15oDGatNUtIyKtKuYK1ffEBl7aWH4sLBYqQGh4lvjX"
-- Salas["bennys"] = "https://discord.com/api/webhooks/1256329648359346298/q2nwsjyv7DnsnZVh_XTUlepDyA3UXoibNU9Abm7IFX2lKksKO90Ct09f5klj9h7K8SEd"
-- Salas["chat"] = "https://discord.com/api/webhooks/1259560232011563072/la96iUCRs4sZ8T6YE7_uQplYpNyQSJHhixKIgMGUz5pd-yoeKpkeMLyR8sXx2dEyt8xL"
-- Salas["apreender"] = "https://discord.com/api/webhooks/1257794386331177103/WXE6o-fAJ0M5W4o8yg8P4OySxA63rlaG8mP98GsyviwWhPhrmyR5J2GN3KwEoEKfpXqE"
-- Salas["apreender2"] = "https://discord.com/api/webhooks/1257794518443626627/OpS7C9KSjhhhXdelLexZ6yX0F83usMtqPBYAnMO6xjMAKkLXp421asAmx1I6TDZ0to0_"
-- Salas["socorro"] = "https://discord.com/api/webhooks/1265836568334176316/44Cx-IOwGpwC-e8H45xcjcDr1Q63PxyPKnl7HNdq1UIn00t3oVRh7lALy5tV2dIsnV_r"
-- Salas["desmanche:ferrovelho"] = ""
-- Salas["limparinv"] = ""
--  Salas["desmanche:abutres"] = "https://discord.com/api/webhooks/1262560557983072266/twZyKFK8adDoCkVXXrd3W-MCDd-MpOzLT9uGJSuwzbLq72u0LQIfv6nSja07bQMX2iNF"
-- Salas["desmanche:turquia"] = ""
-- Salas["desmanche:russia"] = ""
-- Salas["desmanche:rocinha"] = ""
-- Salas["desmanche:grotta"] = ""
-- Salas["desmanche:motoclub"] = ""
-- Salas["ponto-pm"] = ""
-- Salas["ponto-mec"] = ""
-- Salas["ponto-juridico"] = ""
-- Salas["equipou-arma"] = "https://discord.com/api/webhooks/1259559934958239765/ruPOF_HHG00i2l9oebLZdT7iAgqtArBhtMAV4r9T4_wqNQN3e2LlG51gBbVP4PAd9E2y"
-- Salas["recarregou-arma"] = "https://discord.com/api/webhooks/1259559934958239765/ruPOF_HHG00i2l9oebLZdT7iAgqtArBhtMAV4r9T4_wqNQN3e2LlG51gBbVP4PAd9E2y"
-- Salas["guardar-armas"] = "https://discord.com/api/webhooks/1259559878461227089/ELTTjPnto377j1Mi_I_4Qigqtv06MPtw1bkX8d22NttTRts4Dr1KCcofdfQshbMQ2wcb"
-- ---- [ STAFF ] ---------
-- Salas["item"] = "https://discord.com/api/webhooks/1259560032043794532/7q-i7EK9X-km4_rBkaq_pgpHugZD6HWjTGvObbM967Q_DGH3OM2yEtjxQ50tcIoCxSqp"
-- Salas["car"] = "https://discord.com/api/webhooks/1265838615741599796/4dghyBBTrZWWGNwEkXnpgIdrDiuHaHu_AqEGPtBvMrtg07ZLc4hbjeIwrnRjhpCWhaYn"
-- Salas["ARSENAL"] = "https://discord.com/api/webhooks/1265838488507519036/D6j2-Bou43LN9N3ck1EUBK5wzxtHJIyAk4jhOn2FLiA4R5q45WKi_Cy_hH-xPFCd8pui"
-- Salas["add-car"] = "https://discord.com/api/webhooks/1265838615741599796/4dghyBBTrZWWGNwEkXnpgIdrDiuHaHu_AqEGPtBvMrtg07ZLc4hbjeIwrnRjhpCWhaYn"
-- Salas["rem-car"] = "https://discord.com/api/webhooks/1265838615741599796/4dghyBBTrZWWGNwEkXnpgIdrDiuHaHu_AqEGPtBvMrtg07ZLc4hbjeIwrnRjhpCWhaYn"
-- Salas["fix"] = "https://discord.com/api/webhooks/1256329792748523582/1tGt-XYfpAsyx64rga1NWmEDPVUouNLKVcqEl92L-YR3MDkb_0VksQ3ZNLCkpIEhG8Jk"
-- Salas["god"] = "https://discord.com/api/webhooks/1256330690149224559/wd-bAmcPVxsJBF5Pt0cHIQQ7rWRMuSrpuXW2kSe5ElCGQ_rVGUNTATUUiVg2n8Jx0wCT"
-- -- Salas["wl"] = ""
-- -- Salas["kick"] = ""
-- Salas["ban"] = "https://discord.com/api/webhooks/1262905508151562251/6_2EIkuHTKOy48HlXtJeB7Oy5QQxnq9aSHlZ805foN8tQNRfyLhVB4hXYMunwSBmANXm"
-- -- Salas["unban"] =""
-- -- Salas["money"] = ""
-- Salas["noclip"] = "https://discord.com/api/webhooks/1265836833321779230/u5xHLzCNCnzZEDYnBkK9C_felz2eAVaDt39LYZgU0da__HB6b52S9s2P6kO2CSACRdsT"
-- Salas["teleport"] = "https://discord.com/api/webhooks/1265837072736976947/4D3iS75VnZBIzZW23oMFCyXQMw_R47XWCI1_xm1RjyX0gahzIK6EgvgyrI82__yWgznN"
-- -- Salas["group"] = ""
-- -- Salas["ungroup"] = ""
-- Salas["admin"] = "https://discord.com/api/webhooks/1265837277544710226/emMKYjK4e1qypXvX96GxaDgRL4QGpuMX98zh_pqFtlsZqevyxQrMSYlvtb2CNuKCdcQn"
-- Salas["ponto-staff"] = "https://discord.com/api/webhooks/1265838113473822740/py4-S4qa36alhoXh5AXajiy5ccVV_Bfo69akROiu1MoFO-xorQ_00eemY1qjrcyTA-Rj"
-- Salas["dv"] = "https://discord.com/api/webhooks/1256329648359346298/q2nwsjyv7DnsnZVh_XTUlepDyA3UXoibNU9Abm7IFX2lKksKO90Ct09f5klj9h7K8SEd"
-- Salas["kicksrc"] = ""
-- Salas["bansrc"] = ""
---- [ ANTIHACK ] ---------
-- Salas["antihack"] = ""
-- Salas["suspeitoarmas"] = ""
-- Salas["antiflood"] = ""
-- Salas["antiflood-trigger"] = ""
-- Salas["statebag"] = ""


--Salas[""] = ""
---------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
---------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.sendLog(sala,mensagem)
	if (not sala) then sala = "default" end
	if (not Salas[sala]) then
		mensagem = "**ALERTA:** Sala não especificada: **"..sala.."**```ini\n"..mensagem.." "..os.date("\n[DATA]: %d/%m/%Y [HORA]: %H:%M:%S").." \r```"
		sala = "default"
	else
		mensagem = "```ini\n"..mensagem.." "..os.date("\n[DATA]: %d/%m/%Y [HORA]: %H:%M:%S").." \r```"
	end
	PerformHttpRequest(Salas[sala], function(err, text, headers) end, "POST", json.encode({content = mensagem}), { ["Content-Type"] = "application/json" })
end
--[[
---------------------------------------------------------------------------------------------------------------------------------------------------
--EXEMPLOS DE SALAS
---------------------------------------------------------------------------------------------------------------------------------------------------
Salas["money"] = "https://discord.com/api/webhooks/807657989606473768/linkgigantedasaladodiscordquefazowebhooknessabagaça"
Salas["noclip"] = "LINK PARA LOG DO COMANDO NC"
---------------------------------------------------------------------------------------------------------------------------------------------------
--EXEMPLOS DE ENVIO DE LOGS NO DISCORD UTILIZANDO AS SALAS ACIMA
---------------------------------------------------------------------------------------------------------------------------------------------------
vRP.webhook("Esta mensagem será enviada para sala de logs do noclip","noclip")
vRP.webhook("Esta mensagem será enviada para sala de money","money")
vRP.webhook("Esta mensagem será enviada para sala default pois não estou passando a sala >")
---------------------------------------------------------------------------------------------------------------------------------------------------
--EXEMPLOS DE ENVIO DE LOGS NO DISCORD UTILIZANDO UMA SALA NÃO DECLARADA NO LOG.LUA
---------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("money",function(source,args,rawCommand)
	local source = source
    local user_id = vRP.getUserId(source)
	if not user_id then return end
    if not vRP.hasPermission(user_id,"admin.permissao") then return end
	if not args[1] then return end
	vRP.giveMoney(user_id,parseInt(args[1]))
	vRP.webhook("[/money] user id:"..user_id,"money")
end)
]]