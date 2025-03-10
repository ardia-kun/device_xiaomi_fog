LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AudioFX \
    Aperture \
    AndroidAutoStubPrebuilt \
    BuiltInPrintService\
    CalculatorGooglePrebuilt_85005407 \
    CalendarGooglePrebuilt \
    DevicePolicyPrebuilt-v10052480 \
    DevicePersonalizationPrebuiltPixel2024-U.32_V.7_playstore_aiai_20240725.00_RC08 \
    GoogleTTS \
    GoogleRestorePrebuilt-v636048 \
    Etar \
    ExactCalculator \
    EmergencyInfo \
    FM2 \
    Jelly \
    LiveWallpapersPicker \
    Music \
    Photos \
    PrebuiltGmail \
    SoundAmplifierPrebuilt_v4.7.638126989 \
    SwitchAccessPrebuilt_1.15.0.629986523 \
    TurboPrebuilt \
    Recorder \
    SecureElement \
    ScribePrebuilt_v7.0.633113815 \
    SafetyHubSuwPrebuilt \
    Seedvault \
    Stk \
    Traceur \
    Twelve \
    WellbeingPrebuilt \
    WeatherPixelPrebuilt_24D1 \
    Velvet \
    MatLog \
    QuickAccessWallet \
    ViaBrowser

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
