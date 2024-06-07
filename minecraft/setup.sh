#!/bin/bash

# -----------------------------------------------------------------------------
# Minecraft
# -----------------------------------------------------------------------------

mkdir -p ~/Downloads/minecraft
pushd ~/Downloads/minecraft
wget https://launcher.mojang.com/download/Minecraft.deb
apt install ./Minecraft.deb
popd

ln -s ~/.minecraft ~/Games/minecraft

# https://github.com/pop-os/pop/issues/3118
echo "drivers=pulse" >> ~/.alsoftrc

# -----------------------------------------------------------------------------
# Minecraft Modded - Fabric
# -----------------------------------------------------------------------------

# https://fabricmc.net/
# wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.11.2/fabric-installer-0.11.2.jar
#chmod a+x fabric-installer-0.11.2.jar
#java -jar fabric-installer-0.11.2.jar
wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/1.0.0/fabric-installer-1.0.0.jar
chmod a+x fabric-installer-1.0.0.jar
java -jar fabric-installer-1.0.0.jar

# -----------------------------------------------------------------------------
# Minecraft Modded - Forge
# -----------------------------------------------------------------------------

# https://files.minecraftforge.net/net/minecraftforge/forge/
chmod a+x forge-1.20.1-47.0.49-installer.jar
java -jar forge-1.20.1-47.0.49-installer.jar

# -----------------------------------------------------------------------------
# Minecraft Modded - OptiFine only
# -----------------------------------------------------------------------------

# https://optifine.net/downloads
chmod a+x preview_OptiFine_1.20.1_HD_U_I5_pre6.jar
java -jar preview_OptiFine_1.20.1_HD_U_I5_pre6.jar

