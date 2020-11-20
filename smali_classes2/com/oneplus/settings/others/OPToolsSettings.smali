.class public Lcom/oneplus/settings/others/OPToolsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPToolsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

.field private mAppLocker:Landroidx/preference/Preference;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mGameSpacePreference:Landroidx/preference/Preference;

.field private mGotoAppLockerClick:Z

.field private mMultiAppPreference:Landroidx/preference/Preference;

.field private mOneplusLaboratorySettings:Landroidx/preference/Preference;

.field private mOneplusQuickReply:Landroidx/preference/Preference;

.field private mQuickLaunchPreference:Landroidx/preference/Preference;

.field private mQuickPayPreference:Landroidx/preference/Preference;

.field private mSwitchPreference:Landroidx/preference/Preference;

.field private mTimerShutdownPreference:Landroidx/preference/Preference;

.field private mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

.field private mWorkLifeBalancePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 362
    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPToolsSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPToolsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowGameSpace(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowWorkLife(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/others/OPToolsSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateWLBPreferenceSummary()V

    return-void
.end method

.method private static isNeedShowGameSpace(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "com.oneplus.gamespace"

    .line 438
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x2

    const-string v4, "game_space_hide_icon"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 447
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.gamespace.ui.main.MainActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 449
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedShowGameSpace value:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPOthersSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isNeedShowWorkLife(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.oneplus.opwlb"

    .line 455
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private launchChooseOrConfirmLock(I)V
    .locals 9

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 263
    sget v2, Lcom/android/settings/R$string;->op_security_lock_settings_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mChallenge:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 264
    const-class p1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    const-string v1, "minimum_quality"

    .line 265
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "hide_disabled_prefs"

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "has_challenge"

    .line 267
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    iget-wide v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x66

    .line 269
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private updatePreferencesVisibility()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowWorkLife(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 5

    .line 144
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "oneplus_multi_app"

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroidx/preference/Preference;

    .line 147
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "oneplus_app_locker"

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroidx/preference/Preference;

    .line 150
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "OP_FEATURE_SECOND_PRIVATE_PASSWORD"

    .line 151
    invoke-static {v1}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v1, "oneplus_quick_pay"

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    const-string v1, "oneplus_quick_launch"

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickLaunchPreference:Landroidx/preference/Preference;

    const-string v1, "worklifebalance"

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    .line 160
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 166
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 173
    :cond_4
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    sget v3, Lcom/android/settings/R$string;->oneplus_fingerprint_longpress_for_quickpay_summary:I

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    sget v3, Lcom/android/settings/R$string;->oneplus_quickpay_entry_summary:I

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    .line 179
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_acc_anti_misoperation_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 181
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportPocketMode()Z

    move-result v1

    if-nez v1, :cond_7

    .line 182
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    new-array v1, v4, [I

    const/16 v3, 0x3f

    aput v3, v1, v2

    .line 185
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 186
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    sget v3, Lcom/android/settings/R$string;->oneplus_pocket_mode_summary:I

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_8
    const-string v1, "timer_shutdown_startup_settings"

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 192
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    sget v3, Lcom/android/settings/R$string;->oneplus_timer_shutdown_disable_summary:I

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 195
    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_3
    const-string v1, "oneplus_laboratory_settings"

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    .line 201
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "oneplus_quick_replay"

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusQuickReply:Landroidx/preference/Preference;

    .line 203
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickReply()Z

    move-result v1

    if-nez v1, :cond_a

    .line 204
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusQuickReply:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 206
    :cond_a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 207
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 208
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 209
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 210
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 211
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 212
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusQuickReply:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 213
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 217
    :cond_b
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isLaboratoryFeatureExist()Z

    move-result v1

    if-nez v1, :cond_c

    .line 218
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
    const-string v1, "switch"

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroidx/preference/Preference;

    .line 230
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.oneplus.backuprestore"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 232
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 235
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.oneplus.gamespace"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "gaming_mode"

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 238
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_e
    const-string v1, "game_space"

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.oneplus.opwlb"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 244
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_f

    .line 245
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 250
    :cond_f
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    if-nez v0, :cond_10

    .line 251
    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;-><init>(Lcom/oneplus/settings/others/OPToolsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "worklife_feature_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    :cond_10
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateWLBPreferenceSummary()V

    return-void
.end method

.method private updateWLBPreferenceSummary()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "worklife_feature_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object p0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->notification_for_work_life:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 471
    iget-object p0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->notification_for_work_life_disabled:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const-string p0, "OPOthersSettings"

    const-string v0, "WLB feature has been removed"

    .line 473
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 2

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "require_password_to_decrypt"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public gotoAppLockerPage()V
    .locals 3

    const/4 v0, 0x0

    .line 289
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OPAppLockerActivity"

    .line 290
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 293
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPOthersSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 276
    iget-boolean p3, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    if-eqz p3, :cond_3

    const/16 p3, 0x66

    if-eq p1, p3, :cond_0

    const/16 p3, 0x68

    if-ne p1, p3, :cond_2

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->gotoAppLockerPage()V

    :cond_2
    const/4 p1, 0x0

    .line 281
    iput-boolean p1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget p1, Lcom/android/settings/R$xml;->op_tools_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 332
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "oem_acc_anti_misoperation_screen"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 300
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_multi_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "oneplus.intent.action.ONEPLUS_MULTI_APP_LIST_ACTION"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 306
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return v1

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.backuprestore"

    const-string v2, "com.oneplus.backuprestore.activity.BootActivity"

    .line 312
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 316
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return v1

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oneplus_app_locker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OPOthersSettings"

    const-string v0, "App -> Locker"

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    const/16 p1, 0x68

    .line 323
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPToolsSettings;->launchChooseOrConfirmLock(I)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowGameSpace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 117
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updatePreferencesVisibility()V

    return-void
.end method
