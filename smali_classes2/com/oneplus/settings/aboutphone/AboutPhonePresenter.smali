.class public Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;
.super Ljava/lang/Object;
.source "AboutPhonePresenter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;

.field private mView:Lcom/oneplus/settings/aboutphone/Contract$View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/oneplus/settings/aboutphone/Contract$View;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    .line 71
    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "user"

    .line 73
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    .line 74
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "no_debugging_features"

    .line 75
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 79
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 80
    :goto_0
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 82
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    return-void
.end method

.method private addAndroidVersion()V
    .locals 3

    .line 295
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->firmware_version:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 297
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    sget v1, Lcom/android/settings/R$drawable;->op_android_version:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.android.FirmwareVersionDialogFragment"

    .line 299
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 300
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAuthenticationInfo()V
    .locals 7

    .line 223
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_regulatory_information:I

    .line 225
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    sget v1, Lcom/android/settings/R$drawable;->op_authentication_information:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 229
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->oneplus_model_for_china_and_india:I

    .line 230
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "com.oneplus.intent.OPAuthenticationInformationSettings"

    const-string v4, "android.settings.SHOW_REGULATORY_INFO"

    if-nez v1, :cond_f

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A6000"

    .line 232
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A5010"

    .line 234
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A5000"

    .line 236
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 245
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_for_europe_and_america:I

    .line 246
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A6003"

    .line 248
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 251
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 261
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18821_for_eu:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_18865_for_eu:I

    .line 262
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19801_for_eu:I

    .line 263
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_eu:I

    .line 264
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18821_for_us:I

    .line 265
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18831_for_us:I

    .line 266
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_us:I

    .line 267
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_18825_for_us:I

    .line 268
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_oneplus_model_ee145:I

    .line 269
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19801_for_us:I

    .line 270
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_18865_for_us:I

    .line 271
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_18865_for_tmo:I

    .line 272
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19861_for_tmo:I

    .line 273
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19863_for_tmo:I

    .line 274
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19855_for_tmo:I

    .line 275
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19821_for_us:I

    .line 276
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19867_for_vzw:I

    .line 277
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_19811_for_us:I

    .line 278
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 281
    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 282
    invoke-static {v1}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isNeedShowAuthenticationInformation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 284
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    .line 285
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_a
    move-object v3, v2

    goto :goto_5

    .line 280
    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_c
    :goto_1
    const-string v1, "ro.rf_version"

    .line 252
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Am"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    .line 258
    :cond_d
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    .line 259
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    .line 250
    :cond_e
    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 237
    :cond_f
    :goto_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 239
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->regulatory_labels:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v3, v4

    goto :goto_5

    .line 242
    :cond_10
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_authentication_information:I

    .line 243
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    :goto_5
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAwardInfo()V
    .locals 3

    .line 389
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_forum_award_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_o2_contributors:I

    .line 393
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_h2_contributors:I

    .line 396
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    :goto_0
    sget v1, Lcom/android/settings/R$drawable;->op_award_icon:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.OPForumContributorsActivity"

    .line 399
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 400
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceModel()V
    .locals 5

    .line 356
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->model_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 358
    sget v1, Lcom/android/settings/R$drawable;->op_model:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 360
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A60"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 362
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONEPLUS\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "ONEPLUS "

    const-string v4, ""

    .line 363
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceName()V
    .locals 3

    .line 204
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->my_device_info_device_name_preference_title:I

    .line 207
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 209
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    .line 208
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEF009Project()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isContainSymbol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getSymbolDeviceName(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    :goto_0
    sget v1, Lcom/android/settings/R$drawable;->op_device_name:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.OPDeviceNameActivity"

    .line 218
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHardwareVersion()V
    .locals 4

    .line 458
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->onplus_hardware_version_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 460
    sget v1, Lcom/android/settings/R$drawable;->op_hardware_icon:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 462
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.boot.hw_version"

    .line 464
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_version_ui"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 471
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    if-gt v2, v3, :cond_1

    .line 474
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v1, "15"

    .line 476
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 479
    :cond_2
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 482
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLegalInfo()V
    .locals 3

    .line 371
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 372
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->legal_information:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_legal_summary:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    sget v1, Lcom/android/settings/R$drawable;->op_legal_settings:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.LegalSettingsActivity"

    .line 375
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 376
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOneplusSystemVersion()V
    .locals 7

    .line 304
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 308
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    sget v1, Lcom/android/settings/R$drawable;->op_o2_version:I

    .line 310
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->oneplus_oxygen_version:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 314
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ro.oxygen.version"

    .line 312
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "O2"

    const-string v5, "O\u2082"

    .line 315
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 317
    :cond_0
    sget v1, Lcom/android/settings/R$drawable;->op_h2_version:I

    .line 318
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->oneplus_hydrogen_version:I

    .line 319
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H2"

    const-string v4, "H\u2082"

    .line 320
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 321
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 323
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ro.rom.version"

    .line 321
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 327
    :goto_0
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 332
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProductIntroduce()V
    .locals 3

    .line 404
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 405
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_product_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_product_info_summary:I

    .line 407
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    sget v1, Lcom/android/settings/R$drawable;->op_product_info:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.action.PRODUCT_INFO"

    .line 409
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 410
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSoftwareVersion()V
    .locals 7

    .line 415
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->onplus_software_version_info:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 417
    sget v1, Lcom/android/settings/R$drawable;->op_software_icon:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    .line 418
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 421
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ro.build.display.id"

    .line 425
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "_"

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 428
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 429
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ro.boot.hw_version"

    .line 431
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hw_version_ui"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 437
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xd

    if-le v2, v5, :cond_1

    const-string v1, "15"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 441
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    const-string v2, "ro.rom.version"

    .line 448
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "build.number"

    .line 453
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 454
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addStatusInfo()V
    .locals 3

    .line 380
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->device_status:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->oneplus_status_summary:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    sget v1, Lcom/android/settings/R$drawable;->op_status_settings:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.MyDeviceInfoFragmentActivity"

    .line 384
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVersionNumber()V
    .locals 3

    .line 336
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->build_number:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.rom.version"

    .line 346
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    sget v1, Lcom/android/settings/R$drawable;->op_soft_version:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "build.number"

    .line 351
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    .line 352
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCameraInfo()Ljava/lang/String;
    .locals 2

    .line 578
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 580
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8pro_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 582
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 584
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_3t_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 586
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 587
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_3_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 588
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 589
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_18857_camera_info:I

    .line 590
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 591
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 592
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_7_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 593
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_7

    .line 594
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_hd_project_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 595
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP_19_2nd()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_8

    .line 596
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_19_2nd_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    const-string p0, "none"

    goto :goto_2

    :cond_9
    :goto_0
    const-string p0, "16 + 20 MP Dual Camera"

    goto :goto_2

    .line 579
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8_camera_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 2

    .line 489
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_8

    .line 490
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Snapdragon\u2122 845"

    goto :goto_1

    .line 494
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Snapdragon\u2122 835"

    goto :goto_1

    .line 496
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Snapdragon\u2122 821"

    goto :goto_1

    .line 498
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Snapdragon\u2122 820"

    goto :goto_1

    .line 500
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Snapdragon\u2122 855"

    goto :goto_1

    .line 502
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_6

    .line 503
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_hd_project_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 504
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP_19_2nd()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_7

    .line 505
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_19_2nd_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    const-string p0, "none"

    goto :goto_1

    .line 491
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8_series_cpu_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getScreenInfo()Ljava/lang/String;
    .locals 2

    .line 553
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 555
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8pro_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 557
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 560
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_6_01_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 562
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 564
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6013"

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 566
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 568
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_7_pro_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 570
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_7

    .line 571
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_hd_project_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_7
    const-string p0, "none"

    goto :goto_4

    .line 567
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_6_41_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 563
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_5_5_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 559
    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_6_28_inch_amoled_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 554
    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->oneplus_in_project_8_screen_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method private static getTotalMemory()Ljava/lang/String;
    .locals 4

    const-string v0, "/proc/meminfo"

    const/4 v1, 0x0

    .line 537
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 539
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 540
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 548
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static is7TMCLVersionProject()Z
    .locals 3

    .line 107
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19861_for_tmo:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_cn:I

    .line 108
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_in:I

    .line 109
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_eu:I

    .line 110
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19801_for_us:I

    .line 111
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isGuaLiftCameraProject()Z
    .locals 5

    .line 94
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 95
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_guacamole_lift_camera_project:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 97
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 98
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private showHardwareInfo()V
    .locals 7

    .line 120
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19811()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget v0, Lcom/android/settings/R$drawable;->oneplus_8_pro:I

    :goto_0
    move v2, v0

    goto/16 :goto_3

    .line 122
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19821()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19855()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/oneplus/settings/utils/OPBuildModelUtils;->is19867()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 124
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    sget v0, Lcom/android/settings/R$drawable;->oneplus_other:I

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->is7TMCLVersionProject()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    sget v0, Lcom/android/settings/R$drawable;->hd_mcl:I

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    sget v0, Lcom/android/settings/R$drawable;->oneplus_other:I

    goto :goto_0

    .line 131
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 134
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    sget v0, Lcom/android/settings/R$drawable;->oneplus_5:I

    goto :goto_0

    .line 136
    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    sget v0, Lcom/android/settings/R$drawable;->oneplus_5t:I

    goto :goto_0

    .line 138
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    sget v0, Lcom/android/settings/R$drawable;->oneplus_3:I

    goto :goto_0

    .line 140
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    sget v0, Lcom/android/settings/R$drawable;->oneplus_3t:I

    goto :goto_0

    .line 142
    :cond_9
    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isGuaLiftCameraProject()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    sget v0, Lcom/android/settings/R$drawable;->oneplus_gua_lift_camera:I

    goto/16 :goto_0

    .line 144
    :cond_a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    sget v0, Lcom/android/settings/R$drawable;->oneplus_18857:I

    goto/16 :goto_0

    .line 146
    :cond_b
    invoke-static {}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_c

    .line 147
    sget v0, Lcom/android/settings/R$drawable;->oneplus_other:I

    goto/16 :goto_0

    .line 149
    :cond_c
    sget v0, Lcom/android/settings/R$drawable;->oneplus_6:I

    goto/16 :goto_0

    .line 133
    :cond_d
    :goto_1
    sget v0, Lcom/android/settings/R$drawable;->oneplus_6:I

    goto/16 :goto_0

    .line 123
    :cond_e
    :goto_2
    sget v0, Lcom/android/settings/R$drawable;->oneplus_8:I

    goto/16 :goto_0

    .line 151
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getCameraInfo()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getCpuName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getScreenInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getTotalMemory()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-interface/range {v1 .. v6}, Lcom/oneplus/settings/aboutphone/Contract$View;->displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showSoftwareInfo()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addDeviceName()V

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 163
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isNeedAddAuthenticationInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAuthenticationInfo()V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAndroidVersion()V

    .line 168
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addOneplusSystemVersion()V

    .line 172
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addVersionNumber()V

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addDeviceModel()V

    .line 177
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addLegalInfo()V

    .line 178
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addStatusInfo()V

    .line 180
    invoke-static {}, Lcom/oneplus/settings/utils/OPAuthenticationInformationUtils;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 184
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    .line 185
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_1

    .line 182
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_1

    .line 188
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    .line 194
    :cond_6
    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addSoftwareVersion()V

    .line 197
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addHardwareVersion()V

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/oneplus/settings/aboutphone/Contract$View;->displaySoftWarePreference(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public enableDevelopmentSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    .line 606
    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    .line 607
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 609
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    .line 611
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->performHapticFeedback()V

    .line 615
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    sget v0, Lcom/android/settings/R$string;->show_dev_on:I

    invoke-interface {p0, v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    .line 621
    invoke-virtual {p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getIntent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, ""

    .line 622
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.android.FirmwareVersionDialogFragment"

    .line 626
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-class p1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    .line 628
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x270f

    .line 627
    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "build.number"

    .line 630
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 635
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 639
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 642
    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    const-string v0, "no_debugging_features"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 643
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 646
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 647
    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 649
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 650
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    .line 651
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 653
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    .line 654
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 657
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 662
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_6

    iget-boolean v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v1, :cond_6

    .line 664
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 668
    :cond_6
    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez p1, :cond_8

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 669
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-nez p1, :cond_7

    .line 670
    iget-boolean v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez v2, :cond_7

    add-int/2addr p1, v1

    .line 672
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    .line 673
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x64

    .line 675
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 679
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez p1, :cond_a

    .line 681
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->enableDevelopmentSettings()V

    goto :goto_0

    .line 683
    :cond_7
    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez p1, :cond_a

    const/4 v2, 0x5

    if-ge p1, v2, :cond_a

    .line 685
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    .line 686
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->show_dev_countdown:I

    iget p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 688
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 687
    invoke-virtual {v2, v3, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 686
    invoke-interface {p1, p0}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-gez p1, :cond_a

    .line 691
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    .line 692
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    sget p1, Lcom/android/settings/R$string;->show_dev_already:I

    invoke-interface {p0, p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    goto :goto_0

    .line 695
    :cond_9
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showHardwareInfo()V

    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showSoftwareInfo()V

    return-void
.end method
