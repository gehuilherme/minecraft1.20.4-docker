#!/usr/bin/env sh
# Add custom JVM arguments (such as RAM allocation) to the user_jvm_args.txt

echo "eula=$eula" >> "eula.txt"
echo "$min_mem" >> "user_jvm_args.txt"
echo "$max_mem" >> "user_jvm_args.txt"

cat server.properties

echo "allow-flight=$allowflight" >> "server.properties"
echo "allow-nether=$allownether" >> "server.properties"
echo "broadcast-console-to-ops=$broadcastconsoletoops" >> "server.properties"
echo "broadcast-rcon-to-ops=$broadcastrcontoops" >> "server.properties"
echo "difficulty=$difficulty" >> "server.properties"
echo "enable-command-block=$enablecommandblock" >> "server.properties"
echo "enable-jmx-monitoring=$enablejmxmonitoring" >> "server.properties"
echo "enable-query=$enablequery" >> "server.properties"
echo "enable-rcon=$enablercon" >> "server.properties"
echo "enable-status=$enablestatus" >> "server.properties"
echo "enforce-secure-profile=$enforcesecureprofile" >> "server.properties"
echo "enforce-whitelist=$enforcewhitelist" >> "server.properties"
echo "entity-broadcast-range-percentage=$entitybroadcastrangepercentage" >> "server.properties"
echo "force-gamemode=$forcegamemode" >> "server.properties"
echo "function-permission-level=$functionpermissionlevel" >> "server.properties"
echo "gamemode=$gamemode" >> "server.properties"
echo "generate-structures=$generatestructures" >> "server.properties"
echo "generator-settings=$generatorsettings" >> "server.properties"
echo "hardcore=$hardcore" >> "server.properties"
echo "hide-online-players=$hideonlineplayers" >> "server.properties"
echo "initial-disabled-packs=$initialdisabledpacks" >> "server.properties"
echo "initial-enabled-packs=$initialenabledpacks" >> "server.properties"
echo "level-name=$levelname" >> "server.properties"
echo "level-seed=$levelseed" >> "server.properties"
echo "level-type=$leveltype" >> "server.properties"
echo "log-ips=$logips" >> "server.properties"
echo "max-chained-neighbor-updates=$maxchainedneighborupdates" >> "server.properties"
echo "max-players=$maxplayers" >> "server.properties"
echo "max-tick-time=$maxticktime" >> "server.properties"
echo "max-world-size=$maxworldsize" >> "server.properties"
echo "motd=$motd" >> "server.properties"
echo "network-compression-threshold=$networkcompressionthreshold" >> "server.properties"
echo "online-mode=$onlinemode" >> "server.properties"
echo "op-permission-level=$oppermissionlevel" >> "server.properties"
echo "player-idle-timeout=$playeridletimeout" >> "server.properties"
echo "prevent-proxy-connections=$preventproxyconnections" >> "server.properties"
echo "pvp=$pvp" >> "server.properties"
echo "rate-limit=$ratelimit" >> "server.properties"
echo "rcon.password=$rconpassword" >> "server.properties"
echo "rcon.port=$rconport" >> "server.properties"
echo "require-resource-pack=$requireresourcepack" >> "server.properties"
echo "resource-pack=$resourcepack" >> "server.properties"
echo "resource-pack-id=$resourcepackid" >> "server.properties"
echo "resource-pack-prompt=$resourcepackprompt" >> "server.properties"
echo "resource-pack-sha1=$resourcepacksha1" >> "server.properties"
echo "server-ip=$serverip" >> "server.properties"
echo "simulation-distance=$simulationdistance" >> "server.properties"
echo "spawn-animals=$spawnanimals" >> "server.properties"
echo "spawn-monsters=$spawnmonsters" >> "server.properties"
echo "spawn-npcs=$spawnnpcs" >> "server.properties"
echo "spawn-protection=$spawnprotection" >> "server.properties"
echo "sync-chunk-writes=$syncchunk-writes" >> "server.properties"
echo "text-filtering-config=$textfiltering-config" >> "server.properties"
echo "use-native-transport=$usenativetransport" >> "server.properties"
echo "view-distance=$viewdistance" >> "server.properties"
echo "white-list=$whitelist" >> "server.properties"

echo "\nAgora vai\n" 

cat server.properties

sleep 10

java -jar forge-1.20.4-49.0.30-shim.jar --onlyCheckJava || exit 1

# Add custom program arguments (such as nogui) to the next line before the "$@" or pass them to this script directly
java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.20.4-49.0.30/unix_args.txt "$@"
