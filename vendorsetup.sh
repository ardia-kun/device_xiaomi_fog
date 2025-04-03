# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b fifteen-qpr2 https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel
git clone -b swordx/non-ksu --depth 1 https://github.com/ardia-kun/kernel_xiaomi_fog kernel/xiaomi/fog

# Clone LineageOS' hardware/xiaomi
git clone -b lineage-22.2 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi
