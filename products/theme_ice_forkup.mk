$(call inherit-product, vendor/cyanogen/products/cyanogen_sholes.mk)

# Manually set the policy and PRODUCT_PACKAGES so we can tweak them 
# depending on whether or not we build with Google. There is no way
# to override PRODUCT_PACKAGES from an inheriting product yet.

# Change 'defaulttheme' to the theme name
# This will be the same name as the cyanogen_theme_defaulttheme.mk file
# located in the same directory

PRODUCT_NAME := theme_ice_forkup

# Here you need to rename defaulttheme to match the folder name as well
PRODUCT_PACKAGE_OVERLAYS := vendor/theme_ice_forkup/overlay_ice

PRODUCT_COPY_FILES += \
    # vendor/theme_ice_forkup/proprietary_ice/HelixLauncher2.apk:system/app/HelixLauncher2.apk

#PRODUCT_PROPERTY_OVERRIDES += \
     ro.modversion=CyanogenMod-5.0.8-icev1

ifdef ice_WITH_GOOGLE
    TARGET_OTA_BACKUPTOOL=False

    PRODUCT_COPY_FILES += \
	vendor/theme_ice_forkup/proprietary_ice/AlarmClock.apk:system/app/AlarmClock.apk \
        vendor/theme_ice_forkup/proprietary_ice/CarDock.apk:system/app/CarDock.apk \
        vendor/theme_ice_forkup/proprietary_ice/Facebook.apk:system/app/Facebook.apk \
        vendor/theme_ice_forkup/proprietary_ice/GenieWidget.apk:system/app/GenieWidget.apk \
        vendor/theme_ice_forkup/proprietary_ice/googlevoice.apk:system/app/googlevoice.apk \
        vendor/theme_ice_forkup/proprietary_ice/HtcCopyright.apk:system/app/HtcCopyright.apk \
        vendor/theme_ice_forkup/proprietary_ice/libinterstitial.so:system/lib/libinterstitial.so \
        vendor/theme_ice_forkup/proprietary_ice/BugReport.apk:system/app/BugReport.apk \
        vendor/theme_ice_forkup/proprietary_ice/EnhancedGoogleSearchProvider.apk:system/app/EnhancedGoogleSearchProvider.apk \
        vendor/theme_ice_forkup/proprietary_ice/Gmail.apk:system/app/Gmail.apk \
        vendor/theme_ice_forkup/proprietary_ice/GmailProvider.apk:system/app/GmailProvider.apk \
        vendor/theme_ice_forkup/proprietary_ice/GoogleApps.apk:system/app/GoogleApps.apk \
        vendor/theme_ice_forkup/proprietary_ice/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
        vendor/theme_ice_forkup/proprietary_ice/GoogleCheckin.apk:system/app/GoogleCheckin.apk \
        vendor/theme_ice_forkup/proprietary_ice/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
        vendor/theme_ice_forkup/proprietary_ice/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
        vendor/theme_ice_forkup/proprietary_ice/GoogleSettingsProvider.apk:system/app/GoogleSettingsProvider.apk \
        vendor/theme_ice_forkup/proprietary_ice/GoogleSubscribedFeedsProvider.apk:system/app/GoogleSubscribedFeedsProvider.apk \
        vendor/theme_ice_forkup/proprietary_ice/gtalkservice.apk:system/app/gtalkservice.apk \
        vendor/theme_ice_forkup/proprietary_ice/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
        vendor/theme_ice_forkup/proprietary_ice/Maps.apk:system/app/Maps.apk \
        vendor/theme_ice_forkup/proprietary_ice/MarketUpdater.apk:system/app/MarketUpdater.apk \
        vendor/theme_ice_forkup/proprietary_ice/MediaUploader.apk:system/app/MediaUploader.apk \
        vendor/theme_ice_forkup/proprietary_ice/NetworkLocation.apk:system/app/NetworkLocation.apk \
        vendor/theme_ice_forkup/proprietary_ice/SetupWizard.apk:system/app/SetupWizard.apk \
        vendor/theme_ice_forkup/proprietary_ice/Street.apk:system/app/Street.apk \
        vendor/theme_ice_forkup/proprietary_ice/Talk.apk:system/app/Talk.apk \
        vendor/theme_ice_forkup/proprietary_ice/TalkProvider.apk:system/app/TalkProvider.apk \
        vendor/theme_ice_forkup/proprietary_ice/Vending.apk:system/app/Vending.apk \
        vendor/theme_ice_forkup/proprietary_ice/VoiceSearchWithKeyboard.apk:system/app/VoiceSearchWithKeyboard.apk \
        vendor/theme_ice_forkup/proprietary_ice/YouTube.apk:system/app/YouTube.apk \
	vendor/theme_ice_forkup/proprietary_ice/com.amazon.mp3.apk:sysgtem/app/com.amazon.mp3.apk \
        vendor/theme_ice_forkup/proprietary_ice/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml \
        vendor/theme_ice_forkup/proprietary_ice/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml \
        vendor/theme_ice_forkup/proprietary_ice/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        vendor/theme_ice_forkup/proprietary_ice/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar \
        vendor/theme_ice_forkup/proprietary_ice/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        vendor/theme_ice_forkup/proprietary_ice/libgtalk_jni.so:system/lib/libgtalk_jni.so \
        vendor/theme_ice_forkup/proprietary_ice/libt9.so:system/lib/libt9.so

endif
