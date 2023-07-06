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

# -----------------------------------------------------------------------------
# Minecraft Modded - Tweaks
# -----------------------------------------------------------------------------

mkdir -p ~/Downloads/minecraft/1.20.1/
pushd ~/Downloads/minecraft/1.20.1/

# https://optifine.net/downloads
chmod a+x preview_OptiFine_1.20.1_HD_U_I5_pre6.jar
java -jar preview_OptiFine_1.20.1_HD_U_I5_pre6.jar

# Download all the shaders and copy them to ~/.minecraft/shaderpacks
# https://www.curseforge.com/minecraft/customization/vanilla-plus-shader
# https://www.curseforge.com/minecraft/customization/bsl-shaders
# https://www.curseforge.com/minecraft/customization/kappa-shader-by-rre36
# https://www.curseforge.com/minecraft/customization/complementary-shaders
# https://continuum.graphics/continuum-shaders

# -----------------------------------------------------------------------------
# Minecraft Modded - Create
# -----------------------------------------------------------------------------

# https://files.minecraftforge.net/net/minecraftforge/forge/
chmod a+x forge-1.20.1-47.0.49-installer.jar
java -jar forge-1.20.1-47.0.49-installer.jar

# https://www.curseforge.com/minecraft/mc-mods/create

# -----------------------------------------------------------------------------
# Minecraft Modded - Fabric
# -----------------------------------------------------------------------------

# https://fabricmc.net/
wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.11.2/fabric-installer-0.11.2.jar
chmod a+x fabric-installer-0.11.2.jar
java -jar fabric-installer-0.11.2.jar

# https://www.curseforge.com/minecraft/mc-mods/fabric-api
# https://www.curseforge.com/minecraft/mc-mods/falling-tree

