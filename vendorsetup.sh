#!/bin/bash

# Colors
green="\033[1;32m"
yellow="\033[1;33m"
red="\033[1;31m"
blue="\033[1;34m"
end="\033[0m"

echo -e "${yellow}=========================================="
echo -e "     Applying ROM Source Patches"
echo -e "==========================================${end}"
sleep 1

# Clone Kernel
echo -e "${blue}>> Cloning Kernel${end}"
git clone https://github.com/xiaomi-msm8953-devs/android_kernel_xiaomi_msm8953 -b lineage-22.2 kernel/xiaomi/msm8953 || {
    echo -e "${red}Failed to clone kernel${end}"
}

# Clone Hardware
echo -e "${blue}>> Cloning Hardware Xiaomi${end}"
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi || {
    echo -e "${red}Failed to clone hardware${end}"
}

# Clone Device Common
echo -e "${blue}>> Cloning Device Common${end}"
git clone https://github.com/xiaomi-msm8953-devs/android_device_xiaomi_msm8953-common -b lineage-22.2 device/xiaomi/msm8953-common || {
    echo -e "${red}Failed to clone device common${end}"
}

# Clone Vendor Daisy
echo -e "${blue}>> Cloning Vendor Daisy${end}"
git clone https://github.com/xiaomi-msm8953-devs/proprietary_vendor_xiaomi_daisy -b lineage-22.2 vendor/xiaomi/daisy || {
    echo -e "${red}Failed to clone vendor daisy${end}"
}

# Clone Vendor Common
echo -e "${blue}>> Cloning Vendor Common${end}"
git clone https://github.com/xiaomi-msm8953-devs/proprietary_vendor_xiaomi_msm8953-common -b lineage-22.2 vendor/xiaomi/msm8953-common || {
    echo -e "${red}Failed to clone vendor common${end}"
}

# Clone Fingerprint HAL
echo -e "${blue}>> Cloning Fingerprint HAL${end}"
git clone https://github.com/xiaomi-msm8953-devs/android_vendor_fingerprint_opensource_interfaces -b lineage-21 vendor/fingerprint/opensource/interfaces || {
    echo -e "${red}Failed to clone fingerprint HAL${end}"
}

# cam
git clone https://github.com/frnwot/android_packages_apps_GrapheneCam.git -b 16 packages/apps/GrapheneCam
