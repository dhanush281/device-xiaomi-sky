#!/bin/bash
#Elixir Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/dhanush281/android_xiaomi_sky_kernel.git device/xiaomi/sky-kernel

# Clone the vendor source

echo "Cloning vendor repository..."
git clone https://github.com/dhanush281/android_vendor_xiaomi_sky.git vendor/xiaomi/sky

# Clone the hardware repository

echo "Cloning hardware repository..."
git clone https://github.com/PixelOS-AOSP/hardware_xiaomi.git hardware/xiaomi

# Clone the agm repository

echo "cloning agm repository..."
rm -rf hardware/qcom-caf/sm8450/audio/agm && git clone https://github.com/dhanush281/agm.git hardware/qcom-caf/sm8450/audio/agm 

echo "done"

# clone sm8450/audio/pal

echo "cloning sm8450/audio/pal repository..."
rm -rf hardware/qcom-caf/sm8450/audio/pal && git clone https://github.com/dhanush281/arpal-lx hardware/qcom-caf/sm8450/audio/pal

echo "done"

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"