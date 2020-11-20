.class public Lcom/android/settings/wifi/WifiSettings2;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings2.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;,
        Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;
    }
.end annotation


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field static final MENU_ID_DISCONNECT:I = 0x3

.field static final MENU_ID_FORGET:I = 0x4

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "wifi_data_usage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

.field private mClickedConnect:Z

.field mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

.field private mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mDialogMode:I

.field private mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mDialogWifiEntryKey:Ljava/lang/String;

.field private mEnableNextOnConnection:Z

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mSavedNetworksPreference:Landroidx/preference/Preference;

.field private mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private final mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1044
    new-instance v0, Lcom/android/settings/wifi/WifiSettings2$4;

    sget v1, Lcom/android/settings/R$xml;->wifi_settings2:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings2$4;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings2;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 210
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$V99arYdpdtZ6EE21Rup8DDbFhmA;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$V99arYdpdtZ6EE21Rup8DDbFhmA;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$6chcgQukKxPOnrvAKZ5_TyYzTKI;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$6chcgQukKxPOnrvAKZ5_TyYzTKI;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiSettings2;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mClickedConnect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings2;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings2;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings2;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 926
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private addPreferences()V
    .locals 3

    .line 241
    sget v0, Lcom/android/settings/R$xml;->wifi_settings2:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "connected_access_point"

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "configure_wifi_settings"

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    const-string v0, "saved_networks"

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 247
    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    const-string/jumbo v0, "wifi_status_message"

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LinkablePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const-string/jumbo v0, "wifi_data_usage"

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 251
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 512
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 511
    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 4

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 372
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private forget(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 1013
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x0

    .line 1014
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    return-void
.end method

.method private getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 876
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 877
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 876
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 879
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->wifi_saved_passpoint_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 881
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 879
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr p1, p2

    .line 884
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_all_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 885
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 884
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wifi_config_key"

    .line 944
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private static isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 1113
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1118
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1120
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 1

    .line 157
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 4

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 894
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 895
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 896
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 897
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "airplane_mode_on"

    .line 898
    invoke-static {v0, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 900
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->updateWifiEntryPreferences()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onWifiEntriesChanged$2(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onWifiEntriesChanged$3(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 667
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onWifiEntriesChanged$4(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings2;->isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$setOffMessage$8()V
    .locals 2

    .line 913
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 914
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v1, Lcom/android/settings/R$string;->location_scanning_screen_title:I

    .line 915
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 917
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$5(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 736
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 737
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    goto :goto_0

    .line 739
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings2;->launchNetworkDetailsFragment(Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateWifiEntryPreferences$6(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    .line 744
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->launchNetworkDetailsFragment(Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$7(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V
    .locals 0

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private launchAddNetworkFragment()V
    .locals 2

    .line 836
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    .line 837
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const-class v1, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 838
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 v1, 0x2

    .line 840
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    .line 841
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 1099
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1101
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_chosen_wifientry_key"

    .line 1100
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1103
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    const-class p1, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;

    .line 1104
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1105
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->getMetricsCategory()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p1, 0x3

    .line 1107
    invoke-virtual {v1, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    .line 1108
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;)V
    .locals 4

    .line 812
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 813
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_wifi_details_datausage_header"

    .line 815
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 817
    :cond_0
    sget v1, Lcom/android/settings/R$string;->pref_title_network_details:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 819
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 820
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 823
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    const-class v0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;

    .line 824
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 825
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 827
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private onAddNetworkPressed()V
    .locals 0

    .line 955
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->launchAddNetworkFragment()V

    return-void
.end method

.method private removeConnectedWifiEntryPreference()V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 847
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private removeWifiEntryPreference()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 852
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_user_restricted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private setOffMessage()V
    .locals 4

    .line 904
    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_wifi_off:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 909
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    sget v1, Lcom/android/settings/R$string;->wifi_scan_notify_text:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 911
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_scan_notify_text_scanning_off:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 912
    :goto_0
    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$1IC8PJNv_zTcWPS-WVMpJQHPcl4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$1IC8PJNv_zTcWPS-WVMpJQHPcl4;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    .line 918
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings2;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    .line 919
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->removeConnectedWifiEntryPreference()V

    .line 920
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->removeWifiEntryPreference()V

    .line 921
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 2

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 564
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 575
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 576
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 577
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogMode:I

    .line 579
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateWifiEntryPreferences()V
    .locals 8

    .line 715
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 724
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    .line 726
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 727
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-eqz v3, :cond_2

    .line 728
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    if-eq v3, v0, :cond_4

    .line 729
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 730
    new-instance v3, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, p0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    .line 732
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    .line 734
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 735
    new-instance v4, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$-jjCTMtU0PoePhdCe-v7p2mUW44;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$-jjCTMtU0PoePhdCe-v7p2mUW44;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 743
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$dKVcYyHrAQgiC7BycznqOzkdLXE;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$dKVcYyHrAQgiC7BycznqOzkdLXE;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;)V

    .line 747
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mClickedConnect:Z

    if-eqz v0, :cond_4

    .line 748
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mClickedConnect:Z

    .line 749
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 757
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 758
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 759
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 762
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-eqz v6, :cond_6

    .line 766
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v7

    if-ne v7, v3, :cond_5

    add-int/lit8 v3, v4, 0x1

    .line 767
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 771
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 775
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings2;->createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    move-result-object v5

    .line 776
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v6, v4, 0x1

    .line 777
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 778
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    .line 780
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 781
    new-instance v4, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$oYysfaV3KYcupIpqO-iIAN4wzwI;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$oYysfaV3KYcupIpqO-iIAN4wzwI;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v5, v4}, Lcom/android/settingslib/wifi/WifiEntryPreference;->setOnButtonClickListener(Lcom/android/settingslib/wifi/WifiEntryPreference$OnButtonClickListener;)V

    .line 785
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v3, v2

    move v4, v6

    goto :goto_2

    .line 787
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    if-nez v3, :cond_9

    .line 790
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings2;->setProgressBarVisible(Z)V

    .line 791
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 792
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 793
    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    add-int/lit8 v1, v4, 0x1

    .line 794
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v2, "wifi_empty_list"

    .line 795
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 796
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v4, v1

    goto :goto_3

    .line 800
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 801
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method private updateWifiEntryPreferencesDelayed()V
    .locals 3

    .line 701
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 702
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings2;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 708
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings2;->setProgressBarVisible(Z)V

    .line 709
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 1

    .line 971
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1020
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    const/16 v3, 0x87

    .line 1019
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1024
    new-instance v0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;
    .locals 2

    .line 832
    new-instance v0, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 960
    sget p0, Lcom/android/settings/R$string;->help_url_wifi:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 939
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings2;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$WifiSettings2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$WifiSettings2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$onWifiEntriesChanged$2$WifiSettings2(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->lambda$onWifiEntriesChanged$2(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setOffMessage$8$WifiSettings2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->lambda$setOffMessage$8()V

    return-void
.end method

.method public synthetic lambda$updateWifiEntryPreferences$5$WifiSettings2(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings2;->lambda$updateWifiEntryPreferences$5(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateWifiEntryPreferences$6$WifiSettings2(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings2;->lambda$updateWifiEntryPreferences$6(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    return-void
.end method

.method public synthetic lambda$updateWifiEntryPreferences$7$WifiSettings2(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings2;->lambda$updateWifiEntryPreferences$7(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 258
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 261
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiSettings2{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v14, Lcom/android/settings/wifi/WifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 264
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v8, Lcom/android/settings/wifi/WifiSettings2$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v8, v14, v0}, Lcom/android/settings/wifi/WifiSettings2$1;-><init>(Lcom/android/settings/wifi/WifiSettings2;Ljava/time/ZoneId;)V

    .line 271
    new-instance v13, Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 272
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 273
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 274
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/NetworkScoreManager;

    new-instance v6, Landroid/os/Handler;

    .line 275
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, v14, Lcom/android/settings/wifi/WifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    move-object v0, v13

    move-object v15, v13

    move-object/from16 v13, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object v15, v14, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v14, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 288
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 290
    new-instance v0, Lcom/android/settings/wifi/WifiSettings2$2;

    invoke-direct {v0, v14}, Lcom/android/settings/wifi/WifiSettings2$2;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    iput-object v0, v14, Lcom/android/settings/wifi/WifiSettings2;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 322
    invoke-virtual {v14, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    move-object/from16 v0, p1

    if-eqz v0, :cond_1

    const-string v1, "dialog_mode"

    .line 325
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v14, Lcom/android/settings/wifi/WifiSettings2;->mDialogMode:I

    const-string/jumbo v1, "wifi_ap_key"

    .line 326
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 331
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_enable_next_on_connect"

    .line 332
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v14, Lcom/android/settings/wifi/WifiSettings2;->mEnableNextOnConnection:Z

    const-string/jumbo v1, "wifi_start_connect_ssid"

    .line 334
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/android/settings/wifi/WifiSettings2;->mOpenSsid:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 413
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 416
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/WifiSettings2;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_1

    .line 420
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz p0, :cond_1

    .line 421
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    if-ne p2, v0, :cond_3

    const-string p1, "network_config_key"

    .line 427
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    .line 430
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/settings/wifi/WifiSettings2$1;)V

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_3
    return-void

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    return-void

    .line 440
    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 443
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 445
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->addPreferences()V

    :cond_6
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 517
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 531
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings2;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return v2

    .line 525
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return v2

    .line 522
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return v2

    .line 519
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/wifi/WifiSettings2;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->addPreferences()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 451
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    .line 452
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 473
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 474
    instance-of p3, p2, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-nez p3, :cond_0

    return-void

    .line 480
    :cond_0
    check-cast p2, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 482
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 483
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 484
    sget p2, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 487
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x3

    .line 488
    sget v1, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 494
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->canForgetNetwork()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    .line 495
    sget v1, Lcom/android/settings/R$string;->forget:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 498
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 504
    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eq p0, p3, :cond_5

    const/4 p0, 0x5

    .line 506
    sget p2, Lcom/android/settings/R$string;->wifi_modify:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 591
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 588
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 346
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 597
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 598
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 604
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 605
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 606
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    .line 978
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 398
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 399
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 538
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 540
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 543
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 544
    check-cast p1, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    .line 545
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return v1

    .line 552
    :cond_1
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/settings/wifi/WifiSettings2;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    if-ne p1, v0, :cond_3

    .line 554
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->onAddNetworkPressed()V

    :goto_0
    return v1

    .line 556
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 379
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 383
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->restrictUi()V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->changeNextButtonState(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 463
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    .line 466
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mDialogWifiEntryKey:Ljava/lang/String;

    const-string/jumbo v0, "wifi_ap_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    .line 1008
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 351
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 355
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->restrictUi()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 408
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    .line 983
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getMode()I

    move-result v0

    .line 984
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 985
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_0

    .line 989
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 990
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 992
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_4

    .line 995
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 997
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/settings/wifi/WifiSettings2;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/settings/wifi/WifiSettings2$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    sget p2, Lcom/android/settings/R$layout;->op_progress_header:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->progress_bar_animation:I

    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings2;->mProgressHeader:Landroid/view/View;

    const/4 p2, 0x0

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings2;->setProgressBarVisible(Z)V

    .line 222
    :cond_0
    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_settings_master_switch_title:I

    invoke-virtual {p0, p1, p1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 2

    .line 660
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->updateWifiEntryPreferencesDelayed()V

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->changeNextButtonState(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mOpenSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$-ONu6f9uIZFPvNdpqmjqPZEYKv8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$-ONu6f9uIZFPvNdpqmjqPZEYKv8;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    .line 666
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$BCp0XHoI-ZEERzX8T_KGso62F1g;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$BCp0XHoI-ZEERzX8T_KGso62F1g;

    .line 667
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;

    .line 669
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 671
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 673
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mOpenSsid:Ljava/lang/String;

    .line 674
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_1
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 3

    .line 622
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    .line 627
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings2;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings2"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 633
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 637
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->removeConnectedWifiEntryPreference()V

    .line 638
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->removeWifiEntryPreference()V

    .line 639
    sget v0, Lcom/android/settings/R$string;->wifi_starting:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->addMessagePreference(I)V

    .line 640
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings2;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 650
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->setOffMessage()V

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings2;->setAdditionalSettingsSummaries()V

    const/4 v0, 0x0

    .line 652
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->setProgressBarVisible(Z)V

    .line 653
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mClickedConnect:Z

    goto :goto_0

    .line 644
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->removeConnectedWifiEntryPreference()V

    .line 645
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->removeWifiEntryPreference()V

    .line 646
    sget v0, Lcom/android/settings/R$string;->wifi_stopping:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->addMessagePreference(I)V

    :goto_0
    return-void
.end method

.method openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 1129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings2;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 1132
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity was not found for intent, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings2"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method setAdditionalSettingsSummaries()V
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    .line 858
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings2;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    sget v1, Lcom/android/settings/R$string;->wifi_configure_settings_preference_summary_wakeup_on:I

    goto :goto_0

    .line 860
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_configure_settings_preference_summary_wakeup_off:I

    .line 857
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedNetworks()I

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedSubscriptions()I

    move-result v1

    add-int v2, v0, v1

    if-lez v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 866
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings2;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 867
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings2;->getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;

    move-result-object p0

    .line 866
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 869
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 931
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 932
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method