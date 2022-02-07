#!/system/bin/sh

# SCRIPT PARA VER INFO DO SISTEMA E DO CELL 
# DEV = lucas290as
# AUTHOR = LUCAS DE SOUZA SANTOS

clear;
echo "\t BUSCANDO INFO DO CELL...";
sleep 5;
clear;
echo "\t ALGUNS DADOS FORAM ENCONTRADOS!";
sleep 3;
clear;

echo "[*] Versão do Android: $(getprop ro.build.version.release)";
echo "[*] Versão do SDK: $(getprop ro.build.sdk)";
echo "[*] Marca: $(getprop ro.product.brand)";
echo "[*] Arquitetura: $(getprop ro.product.cpu.abi)";
echo "[*] Plataforma: $(getprop ro.board.platform)"
echo "[*] Dispositivo: $(getprop ro.product.model)";
