:begin

java -XX:+UseG1GC -Xms16G -Xmx16G -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui

timeout 10

echo resuming server...

goto begin