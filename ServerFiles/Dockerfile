FROM alpine:3.19.1

WORKDIR /app
COPY . /app
ENV eula=true
ENV min_mem=-Xms1G
ENV max_mem=-Xmx2G

ENV allowflight=false
ENV allownether=true
ENV broadcastconsoletoops=true
ENV broadcastrcontoops=true
ENV difficulty=normal
ENV enablecommandblock=false
ENV enablejmxmonitoring=false
ENV enablequery=false
ENV enablercon=false
ENV enablestatus=true
ENV enforcesecureprofile=true
ENV enforcewhitelist=false
ENV entitybroadcastrangepercentage=100
ENV forcegamemode=false
ENV functionpermissionlevel=2
ENV gamemode=survival
ENV generatestructures=true
ENV generatorsettings={}
ENV hardcore=false
ENV hideonlineplayers=false
ENV initialdisabledpacks=
ENV initialenabledpacks=vanilla
ENV levelname=world
ENV levelseed=
ENV leveltype=minecraft\:normal
ENV logips=true
ENV maxchainedneighborupdates=1000000
ENV maxplayers=20
ENV maxticktime=60000
ENV maxworldsize=29999984
ENV motd="Minecraft Server"
ENV networkcompressionthreshold=256
ENV onlinemode=true
ENV oppermissionlevel=4
ENV playeridletimeout=0
ENV preventproxyconnections=false
ENV pvp=true
ENV ratelimit=0
ENV rcon.password=
ENV rcon.port=25575
ENV requireresourcepack=false
ENV resourcepack=
ENV resourcepackid=
ENV resourcepackprompt=
ENV resourcepacksha1=
ENV serverip=
ENV simulationdistance=10
ENV spawnanimals=true
ENV spawnmonsters=true
ENV spawnnpcs=true
ENV spawnprotection=16
ENV syncchunkwrites=true
ENV textfilteringconfig=
ENV usenativetransport=true
ENV viewdistance=10
ENV whitelist=false

RUN apk update \
    && apk upgrade \
    && apk add openjdk17

ENTRYPOINT [ "/bin/sh", "run.sh" ]