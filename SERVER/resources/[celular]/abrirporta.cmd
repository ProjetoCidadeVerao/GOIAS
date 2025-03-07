netsh advfirewall firewall add rule name="3000 TCP" dir=in action=allow protocol=TCP localport=3000
cls
netsh advfirewall firewall add rule name="3000 UDP" dir=in action=allow protocol=UDP localport=3000
cls
netsh advfirewall firewall add rule name="3000 TCP" dir=out action=allow protocol=TCP localport=3000
cls
netsh advfirewall firewall add rule name="3000 UDP" dir=out action=allow protocol=UDP localport=3000
cls