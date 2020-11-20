.class public Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSecurityPreferenceController.java"


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_security"

.field private static final TAG:Ljava/lang/String; = "WifiTetherSecurityPreferenceController"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDualSoftApSupported:Z

.field private mListPreference:Landroidx/preference/ListPreference;

.field private mOweSapSupprted:Z

.field private mSaeSapSupprted:Z

.field private mSecurityCapaFetched:Z

.field private mSecurityEntries:[Ljava/lang/String;

.field private mSecurityValue:I

.field private mSecurityValues:[Ljava/lang/String;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 2

    const-string/jumbo v0, "wifi_tether_security"

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    .line 51
    new-instance p2, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 208
    new-instance p2, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111010f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mDualSoftApSupported:Z

    .line 132
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    const-string p1, "WifiTetherSecurityPreferenceController"

    const-string v0, "Register SoftAp callback"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityCapaFetched:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityCapaFetched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSaeSapSupprted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSaeSapSupprted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mOweSapSupprted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mOweSapSupprted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mDualSoftApSupported:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValues:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSummaryForSecurityType(I)Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 234
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "settings_tether_all_in_one"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "wifi_tether_security_2"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "wifi_tether_security"

    :goto_0
    return-object p0
.end method

.method public getSecurityType()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isOweSapSupported()Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mOweSapSupprted:Z

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 189
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 191
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    if-nez p2, :cond_0

    .line 192
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/android/settings/R$string;->wifi_security_dialog:I

    .line 193
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x104000a

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 195
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 196
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 200
    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 153
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    goto :goto_0

    .line 156
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mOweSapSupprted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mDualSoftApSupported:Z

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 158
    iput v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    goto :goto_0

    .line 166
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSaeSapSupprted:Z

    if-eqz v2, :cond_3

    .line 167
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 168
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    goto :goto_0

    .line 171
    :cond_3
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValues:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 179
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
