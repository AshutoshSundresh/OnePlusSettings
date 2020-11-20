.class public Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;
.super Landroidx/preference/Preference;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;
    }
.end annotation


# instance fields
.field private mAnimationAvailable:Z

.field private mAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

.field private mLastIndex:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mSelectedIndex:I

.field private mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    .line 97
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mLastIndex:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v4, Lcom/android/settings/R$styleable;->VideoPreference:[I

    invoke-virtual {v0, p2, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 105
    :try_start_0
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_animation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 108
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId(I)I

    move-result v0

    .line 109
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android.resource"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 115
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 116
    sget v0, Lcom/android/settings/R$layout;->op_custom_fingerprint_anim_choose_layout:I

    .line 117
    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 122
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_preview:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$gv59WWVB_M8C-60fnrT-6plLBUE;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$gv59WWVB_M8C-60fnrT-6plLBUE;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-qmtCZ1Cotcht_SOWUlUe6wB8W8;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-qmtCZ1Cotcht_SOWUlUe6wB8W8;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 128
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->updateAspectRatio()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "VideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Landroid/media/MediaPlayer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->setSelectedAnim(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->changeAnimStyle(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    return p1
.end method

.method private changeAnimStyle(I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->playAnimByStyle(I)V

    return-void
.end method

.method private getCustomAnimationId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    .line 263
    sget p0, Lcom/android/settings/R$raw;->op_custom_fingerprint_anim_1:I

    goto :goto_0

    .line 256
    :cond_0
    sget p0, Lcom/android/settings/R$raw;->op_custom_fingerprint_anim_4:I

    goto :goto_0

    .line 259
    :cond_1
    sget p0, Lcom/android/settings/R$raw;->op_custom_fingerprint_anim_6:I

    goto :goto_0

    .line 247
    :cond_2
    sget p0, Lcom/android/settings/R$raw;->op_custom_fingerprint_anim_5:I

    goto :goto_0

    .line 253
    :cond_3
    sget p0, Lcom/android/settings/R$raw;->op_custom_fingerprint_anim_3:I

    goto :goto_0

    .line 250
    :cond_4
    sget p0, Lcom/android/settings/R$raw;->op_custom_fingerprint_anim_2:I

    :goto_0
    return p0
.end method

.method private getSelectedAnimIndex()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initStyleAnimViews()V
    .locals 15

    .line 336
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_mcl:I

    .line 340
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->op_img_fod_05:I

    invoke-direct {v0, v3, v4, v1}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 344
    :goto_0
    new-instance v3, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_1:I

    .line 345
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->op_img_fod_01:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 347
    new-instance v4, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_4:I

    .line 348
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/android/settings/R$drawable;->op_img_fod_02:I

    const/4 v8, 0x1

    invoke-direct {v4, v5, v7, v8}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 350
    new-instance v5, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v7, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_3:I

    .line 351
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/android/settings/R$drawable;->op_img_fod_03:I

    const/4 v10, 0x2

    invoke-direct {v5, v7, v9, v10}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 353
    new-instance v7, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v9, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_none:I

    .line 354
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/android/settings/R$drawable;->op_img_fod_04:I

    const/16 v12, 0x9

    invoke-direct {v7, v9, v11, v12}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 367
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v9

    const/4 v11, 0x4

    if-eqz v9, :cond_1

    .line 368
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v9, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v13, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_6:I

    .line 369
    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v13, Lcom/android/settings/R$drawable;->op_img_fod_06:I

    invoke-direct {v2, v9, v13, v11}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 373
    :cond_1
    iget-object v9, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v13, -0x2

    const-string v14, "op_custom_unlock_animation_style"

    invoke-static {v9, v14, v6, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initStyleAnimViews  FOD style = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "OPCustomFingerAnimVideoPreference"

    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v8, :cond_6

    if-eq v6, v10, :cond_5

    if-eq v6, v1, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v12, :cond_2

    .line 400
    iput-boolean v8, v3, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    .line 390
    :cond_2
    iput-boolean v8, v7, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_7

    .line 395
    iput-boolean v8, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    .line 379
    iput-boolean v8, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    .line 386
    :cond_5
    iput-boolean v8, v5, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    .line 383
    :cond_6
    iput-boolean v8, v4, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 405
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 408
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private playAnimByStyle(I)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 285
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 287
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 290
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 291
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 292
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 293
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 295
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAnimStyle(I)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimStyle value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_custom_unlock_animation_style"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 278
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForFodAnimStyle()V

    return-void
.end method

.method private setSelectedAnim(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 482
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iput-boolean v0, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OPCustomFingeprintAnimVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->lambda$new$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public needShowWarningDialog()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    if-eqz v2, :cond_1

    .line 143
    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mLastIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    if-eq v2, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 151
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 152
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    sget v0, Lcom/android/settings/R$id;->video_container_scrollview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 157
    sget-object v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$n7oDIuNwXLvvSjYlzPMcxF2HXiw;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$n7oDIuNwXLvvSjYlzPMcxF2HXiw;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    sget v0, Lcom/android/settings/R$id;->video_texture_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 163
    sget v1, Lcom/android/settings/R$id;->video_preview_image:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 164
    sget v2, Lcom/android/settings/R$id;->video_play_button:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 165
    sget v3, Lcom/android/settings/R$id;->video_container:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 168
    iget v4, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget v4, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 170
    new-instance v3, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 210
    sget v0, Lcom/android/settings/R$id;->custom_fingerprint_anim_style_recyclerview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 211
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 213
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->initStyleAnimViews()V

    .line 216
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 218
    new-instance v3, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 220
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)V

    .line 221
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 223
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->getSelectedAnimIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    if-ltz v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 225
    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 228
    :cond_1
    sget v0, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 230
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$2;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 306
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public saveSelectedAnim()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->setAnimStyle(I)V

    return-void
.end method

.method public setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    return-void
.end method
