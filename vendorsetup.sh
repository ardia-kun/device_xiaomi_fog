# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b refresh https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b swordx/staging https://github.com/ardia-kun/fog_kernel_xiaomi_sm6225 kernel/xiaomi/fog

# Clone LineageOS' hardware/xiaomi
git clone -b lineage-22.1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..

#Sign-Key
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp