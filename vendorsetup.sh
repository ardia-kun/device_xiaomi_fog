# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b thirteen https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 --recursive -b Swordx-ksu-13 https://github.com/ardia-kun/kernel_xiaomi_fog kernel_xiaomi_fof

# Clone hardware/xiaomi from PixelOS-AOSP
git clone -b thirteen https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

# Vendor Fixups
cd hardware/xiaomi
rm -rf megvii
cd ../..

# Clang Missing Fixups
rm -rf prebuilts/clang/host/linux-x86/clang-r450784d
git clone https://gitlab.com/tejas101k/clang-r450784d.git prebuilts/clang/host/linux-x86/clang-r450784d

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..

# Force Using KSU
rm -rf system/extras/su

# Sign-Key
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14 vlp && cp -R vlp/* vendor/ && rm -rf vlp
