.class public Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/wifi/tether/utils/TetherUtils$OnDialogConfirmCallback;


# static fields
.field private static final SOFTSIM_URL:Landroid/net/Uri;

.field private static final WIFI_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mHandler:Landroid/os/Handler;

.field final mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftSimPilotModeEnabled:Z

.field private final mSwitch:Landroid/widget/Switch;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.redteamobile.provider"

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->SOFTSIM_URL:Landroid/net/Uri;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.setupDataError_tether"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 188
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 126
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    .line 127
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string p2, "connectivity"

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo p2, "wifi"

    .line 130
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSoftSimPilotModeEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/content/Context;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isPilotModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateSimStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->tetherError(I)V

    return-void
.end method

.method private getPilotModeFromSim(Landroid/content/Context;I)Z
    .locals 7

    const-string p0, "WifiTetherSwitchBarController"

    .line 271
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->SOFTSIM_URL:Landroid/net/Uri;

    const-string p1, "slot"

    const-string p2, "iccid"

    const-string v3, "permit_package"

    const-string v4, "forbid_package"

    const-string v5, "pilot"

    filled-new-array {p1, p2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "slot"

    .line 272
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 275
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 277
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    .line 278
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPilotModeFromSim: isPilotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sPilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    .line 284
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 286
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "getPilotModeFromSim SQLiteException "

    .line 289
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 241
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 234
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPilotModeEnabled(Landroid/content/Context;)Z
    .locals 8

    .line 322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "WifiTetherSwitchBarController"

    if-ge v2, v0, :cond_1

    .line 326
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isSoftSim(I)Z

    move-result v4

    .line 327
    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->getPilotModeFromSim(Landroid/content/Context;I)Z

    move-result v5

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasVirtualSim:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasPilot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-string p0, "Soft sim is in pilot mode"

    .line 330
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "No SIM is in pilot mode"

    .line 334
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSoftSim(I)Z
    .locals 10

    const-string p0, "isSoftSIM"

    const-string v0, "WifiTetherSwitchBarController"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "extphone"

    .line 298
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 300
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "phone"

    .line 302
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSoftSIM slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "generalGetter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 305
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object v3, v5, v9

    .line 306
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 307
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "slot "

    if-eqz p0, :cond_0

    .line 308
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 311
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is NOT softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$onClick$0()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    return-void
.end method

.method private openHotspot()V
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string v0, "WifiTetherSwitchBarController"

    const-string v1, "openHotspot: start tethering"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v3, Landroid/os/Handler;

    .line 401
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 400
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private openTetheringFail()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 375
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopUssTethering()V

    return-void
.end method

.method private startUssTethering()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isNoSimCard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isHaveProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openHotspot()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 345
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->tetherError(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 348
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->tetherError(I)V

    :goto_0
    return-void
.end method

.method private stopUssTethering()V
    .locals 1

    .line 382
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_0
    return-void
.end method

.method private tetherError(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_hotspot_checkbox_text:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 364
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->tether_error_title:I

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 365
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->tether_error_message:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {v2, v3, p1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->showTertheringErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openTetheringFail()V

    goto :goto_0

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_no_sim_title:I

    .line 356
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->tether_no_sim_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {p1, v0, v2}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->showTertheringErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 359
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSimStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 389
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateWifiSwitch()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$WifiTetherSwitchBarController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->lambda$onClick$0()V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WifiTetherSwitchBarController"

    const-string v0, "onClick: start tether"

    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSwitchBarController$1Q77u4UUtMOQY8TZ1sxe4HO3zzE;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSwitchBarController$1Q77u4UUtMOQY8TZ1sxe4HO3zzE;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onConfirm()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openHotspot()V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method startTether()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 178
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isWifiEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->startUstTethering(Landroid/content/Context;Lcom/android/settings/wifi/tether/utils/TetherUtils$OnDialogConfirmCallback;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startUssTethering()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openHotspot()V

    :goto_0
    return-void
.end method

.method stopTether()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->getUstWifiTetheringStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->setTetherState(Landroid/content/Context;Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->setUstWifiTetheringStatus(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
