.class public Lcom/android/settings/core/gateway/SettingsGateway;
.super Ljava/lang/Object;
.source "SettingsGateway.java"


# static fields
.field public static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0xc9

    new-array v0, v0, [Ljava/lang/String;

    .line 230
    const-class v1, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/shortcut/CreateShortcut;

    .line 232
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/wifi/WifiSettings2;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    .line 235
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 236
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsWifiSettings2;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-class v1, Lcom/android/settings/AllInOneTetherSettings;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-class v1, Lcom/android/settings/TetherSettings;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 240
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-class v1, Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 241
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-class v1, Lcom/android/settings/applications/appops/BackgroundCheckSummary;

    .line 242
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    .line 243
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    .line 244
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-class v1, Lcom/android/settings/datetime/DateTimeSettings;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    .line 247
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-class v1, Lcom/android/settings/language/LanguageAndInputSettings;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 249
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 250
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v21, 0x13

    aput-object v1, v0, v21

    const-class v1, Lcom/android/settings/inputmethod/UserDictionarySettings;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x14

    aput-object v1, v0, v22

    const-class v1, Lcom/android/settings/DisplaySettings;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v23, 0x15

    aput-object v1, v0, v23

    const-class v1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x16

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/legal/ModuleLicensesDashboard;

    .line 254
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x17

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x18

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x19

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/assist/ManageAssist;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/history/NotificationStation;

    .line 259
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/location/LocationSettings;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x20

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    .line 264
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x21

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/backup/PrivacySettings;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x22

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x23

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x24

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x25

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x26

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x27

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    .line 271
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x28

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x29

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    .line 273
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/nfc/AndroidBeam;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 279
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x30

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x31

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 282
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x32

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x33

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/AssistGestureSettings;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x34

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/biometrics/face/FaceSettings;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x35

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 287
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x36

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    .line 288
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x37

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x38

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    .line 290
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x39

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/PickupGestureSettings;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/security/CryptKeeperSettings;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/dream/DreamSettings;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x3f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/users/UserSettings;

    .line 297
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x40

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x41

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x42

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x43

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenAccessSettings;

    .line 301
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x44

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    .line 302
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x45

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    .line 303
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x46

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x47

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x48

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x49

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/nfc/PaymentSettings;

    .line 307
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    .line 308
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 309
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSettings;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/SoundSettings;

    .line 311
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/ConversationListSettings;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x4f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x50

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    .line 314
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x51

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    .line 315
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x52

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 316
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x53

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x54

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/AppNotificationSettings;

    .line 318
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x55

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/NotificationAssistantPicker;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x56

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x57

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/ApnSettings;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x58

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/ApnEditor;

    .line 322
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x59

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 323
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    .line 324
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    .line 325
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;

    .line 326
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    .line 327
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 328
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x5f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x60

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    .line 330
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x61

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x62

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x63

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;

    .line 333
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x64

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x65

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    .line 335
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x66

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    .line 336
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x67

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x68

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 338
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x69

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/ChooseAccountFragment;

    .line 339
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/IccLockSettings;

    .line 340
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/TestingSettings;

    .line 341
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    .line 343
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/MasterClear;

    .line 344
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x6f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/system/ResetDashboardFragment;

    .line 345
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x70

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x71

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    .line 347
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x72

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    .line 348
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x73

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x74

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/system/SystemDashboardFragment;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x75

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/NetworkDashboardFragment;

    .line 351
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x76

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 352
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x77

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    .line 354
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x78

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 356
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x79

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    .line 357
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    .line 358
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    .line 359
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    .line 360
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/webview/WebViewAppPicker;

    .line 361
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7e

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/security/LockscreenDashboardFragment;

    .line 362
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x7f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 363
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x80

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 364
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x81

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/backup/ToggleBackupSettingFragment;

    .line 365
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x82

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;

    .line 366
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x83

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    .line 367
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x84

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/network/MobileNetworkListFragment;

    .line 368
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x85

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/PowerMenuSettings;

    .line 369
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x86

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/GlobalActionsPanelSettings;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x87

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/DeviceControlsSettings;

    .line 371
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x88

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

    .line 372
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x89

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;

    .line 373
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8a

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    .line 374
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8b

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

    .line 375
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8c

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    .line 376
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/sound/MediaControlsSettings;

    .line 377
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8e

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/network/OPDualChannelNetworkAccelerationSettings;

    .line 379
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x8f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/LegalSettings;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x90

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;

    .line 381
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x91

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x92

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;

    .line 383
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x93

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDashboardFragment;

    .line 384
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x94

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/better/ReadingModeEffectSelect;

    .line 385
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x95

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/applications/DefaultAppSettings;

    .line 386
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x96

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 389
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x97

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x98

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/better/OPAppLocker;

    .line 391
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x99

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    .line 392
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9a

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;

    .line 393
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9b

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/im/OPQuickReplySettings;

    .line 394
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9c

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPDeviceName;

    .line 395
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9d

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/LegalSettings;

    .line 396
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9e

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;

    .line 397
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x9f

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    .line 398
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa0

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/application/assist/DefaultAssistPicker;

    .line 399
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa1

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/product/OPProductInfoSettings;

    .line 400
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa2

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa3

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDashboardFragment;

    .line 402
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa4

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;

    .line 403
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa5

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;

    .line 404
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa6

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;

    .line 405
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa7

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;

    .line 406
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa8

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPCustomToneSettings;

    .line 407
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xa9

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPCustomShapeSettings;

    .line 408
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xaa

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPCustomClockSettings;

    .line 409
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xab

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/better/OPReadingMode;

    .line 410
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xac

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/better/OPNightMode;

    .line 411
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xad

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/product/OPPreInstalledAppList;

    .line 412
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xae

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPGestureAnswerSettings;

    .line 413
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xaf

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPOneHandModeSettings;

    .line 414
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb0

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    .line 415
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb1

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;

    .line 418
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb2

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;

    .line 425
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb3

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/better/ReadingModeEffectSelect;

    .line 427
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb4

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;

    .line 428
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb5

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/aboutphone/OpenIdSettings;

    .line 431
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb6

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    .line 434
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb7

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPLEDSettings;

    .line 435
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb8

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/network/OPDualChannelNetworkAccelerationSettings;

    .line 438
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xb9

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    .line 441
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xba

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    .line 444
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xbb

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPSystemRingtoneSettings;

    .line 445
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xbc

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;

    .line 446
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xbd

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/defaultapp/view/DefaultCameraPicker;

    .line 447
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xbe

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/defaultapp/view/DefaultGalleryPicker;

    .line 448
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xbf

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/defaultapp/view/DefaultMusicPicker;

    .line 449
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc0

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;

    .line 450
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc1

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;

    .line 452
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc2

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;

    .line 453
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc3

    aput-object v1, v0, v24

    const-class v1, Lcom/android/settings/notification/zen/ZenCustomRuleNotificationsSettings;

    .line 455
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc4

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPSilentMode;

    .line 457
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc5

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    .line 458
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc6

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPVibrationMode;

    .line 459
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc7

    aput-object v1, v0, v24

    const-class v1, Lcom/oneplus/settings/notification/OPRingPattern;

    .line 460
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0xc8

    aput-object v1, v0, v24

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 463
    const-class v1, Lcom/android/settings/Settings$NetworkDashboardActivity;

    .line 465
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 466
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/Settings$AppAndNotificationDashboardActivity;

    .line 467
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    .line 468
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    .line 469
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/Settings$StorageDashboardActivity;

    .line 470
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 471
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-class v1, Lcom/android/settings/Settings$AccountDashboardActivity;

    .line 472
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-class v1, Lcom/android/settings/Settings$PrivacySettingsActivity;

    .line 473
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-class v1, Lcom/android/settings/Settings$SecurityDashboardActivity;

    .line 474
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    .line 475
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-class v1, Lcom/android/settings/Settings$SystemDashboardActivity;

    .line 476
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-class v1, Lcom/android/settings/support/SupportDashboardActivity;

    .line 477
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 479
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    const-class v1, Lcom/android/settings/Settings$WifiSettings2Activity;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v16

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 481
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    .line 482
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v18

    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 484
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v19

    const-class v1, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 485
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v20

    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    .line 486
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v21

    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 488
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v22

    const-class v1, Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;

    .line 489
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v23

    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    .line 490
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    .line 491
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    .line 493
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LanguageAndInputSettingsActivity;

    .line 495
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    .line 496
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$EnterprisePrivacySettingsActivity;

    .line 497
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$MyDeviceInfoActivity;

    .line 498
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ModuleLicensesActivity;

    .line 499
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/backup/UserBackupSettingsActivity;

    .line 500
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$OPEarphoneModeActivity;

    .line 502
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    return-void
.end method
