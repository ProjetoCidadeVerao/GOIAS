Tunnel = module("EQPG", "tunnel/Tu_")
Proxy = module("EQPG", "tunnel/P_")
Resource = GetCurrentResourceName()

EQPG = {}

if IsDuplicityVersion() then
    vRP = Proxy.getInterface("vRP")

    RegisterTunnel = {}
    Tunnel.bindInterface(Resource, RegisterTunnel)

    vTunnel = Tunnel.getInterface(Resource)
else
    vRP = Proxy.getInterface("vRP")

    RegisterTunnel = {}
    Tunnel.bindInterface(Resource, RegisterTunnel)

    vTunnel = Tunnel.getInterface(Resource)
end