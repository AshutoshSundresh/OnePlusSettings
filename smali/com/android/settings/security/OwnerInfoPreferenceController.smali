.class public Lcom/android/settings/security/OwnerInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;
    }
.end annotation


# static fields
.field static final KEY_OWNER_INFO:Ljava/lang/String; = "owner_info_settings"

.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private final mParent:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    .line 56
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "owner_info_settings"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "owner_info_settings"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroidx/fragment/app/Fragment;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isDeviceOwnerInfoEnabled()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method

.method isOwnerInfoEnabled()Z
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method

.method public updateEnableState()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 98
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getOwnerInfo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->owner_info_settings_summary:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
