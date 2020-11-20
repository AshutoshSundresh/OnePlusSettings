.class public Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;
.super Landroidx/preference/Preference;
.source "OPCustomNotificationAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;
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

    .line 93
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAspectRadio:F

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_horizon_light_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mLastIndex:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v4, Lcom/android/settings/R$styleable;->VideoPreference:[I

    invoke-virtual {v0, p2, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 102
    :try_start_0
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_animation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 105
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getCustomAnimationId(I)I

    move-result v0

    .line 106
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android.resource"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 113
    sget v0, Lcom/android/settings/R$layout;->op_custom_notification_anim_choose_layout:I

    .line 114
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 116
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_preview:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mPreviewResource:I

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$XDIE-VqYRxTMK4Qxo5ND3bUls_g;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$XDIE-VqYRxTMK4Qxo5ND3bUls_g;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$Agw3O0vl_alalHCVViyH3bHn0mM;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$Agw3O0vl_alalHCVViyH3bHn0mM;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 122
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnimationAvailable:Z

    .line 123
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->updateAspectRatio()V

    goto :goto_0

    .line 125
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

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/media/MediaPlayer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->setSelectedAnim(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->changeAnimStyle(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    return p1
.end method

.method private changeAnimStyle(I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->playAnimByStyle(I)V

    return-void
.end method

.method private getCustomAnimationId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    .line 263
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_blue_anim:I

    goto :goto_0

    .line 258
    :cond_0
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_mcl_anim:I

    goto :goto_0

    .line 255
    :cond_1
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_purple_anim:I

    goto :goto_0

    .line 252
    :cond_2
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_gold_anim:I

    goto :goto_0

    .line 249
    :cond_3
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_red_anim:I

    :goto_0
    return p0
.end method

.method private getSelectedAnimIndex()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 466
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

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
    .locals 13

    .line 356
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->aod_horizon_light_effect_1:I

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->op_custom_horizon_light_blue:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 361
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->aod_horizon_light_effect_2:I

    .line 362
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/settings/R$drawable;->op_custom_horizon_light_red:I

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 364
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->aod_horizon_light_effect_4:I

    .line 365
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/android/settings/R$drawable;->op_custom_horizon_light_gold:I

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 367
    new-instance v4, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->aod_horizon_light_effect_3:I

    .line 368
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/android/settings/R$drawable;->op_custom_horizon_light_purple:I

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 370
    new-instance v6, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->aod_horizon_light_effect_5:I

    .line 371
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/android/settings/R$drawable;->op_custom_horizon_light_mcl:I

    const/16 v11, 0xa

    invoke-direct {v6, v8, v10, v11}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 374
    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "op_custom_horizon_light_animation_style"

    const/4 v12, -0x2

    invoke-static {v8, v10, v3, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initStyleAnimViews  AOD style = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OPCustomNotificationAnimVideoPreference"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v9, :cond_1

    if-eq v3, v11, :cond_0

    .line 394
    iput-boolean v5, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 391
    :cond_0
    iput-boolean v5, v6, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 388
    :cond_1
    iput-boolean v5, v4, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 385
    :cond_2
    iput-boolean v5, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 382
    :cond_3
    iput-boolean v5, v1, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 379
    :cond_4
    iput-boolean v5, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    .line 401
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 402
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private playAnimByStyle(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 287
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 289
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getCustomAnimationId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 292
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 293
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 294
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 295
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAnimStyle(I)V
    .locals 3

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

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentHorizonLightByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    const-string v2, "oneplus_aodnotification"

    invoke-static {v2, v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 277
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    .line 280
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForHorizonLightAnimStyle()V

    return-void
.end method

.method private setSelectedAnim(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 475
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 477
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

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

.method private updateAspectRatio()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAspectRadio:F

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OPCustomNotificationAnimVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->lambda$new$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public needShowWarningDialog()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    if-eqz v2, :cond_1

    .line 137
    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mLastIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

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

    .line 145
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 146
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    sget v0, Lcom/android/settings/R$id;->video_container_scrollview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 151
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    sget v0, Lcom/android/settings/R$id;->video_texture_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 160
    sget v1, Lcom/android/settings/R$id;->video_preview_image:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    sget v2, Lcom/android/settings/R$id;->video_play_button:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 162
    sget v3, Lcom/android/settings/R$id;->video_container:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 165
    iget v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAspectRadio:F

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 167
    new-instance v3, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 207
    sget v0, Lcom/android/settings/R$id;->custom_fingerprint_anim_style_recyclerview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 210
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 212
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->initStyleAnimViews()V

    .line 213
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 215
    new-instance v3, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 217
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    .line 218
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 220
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getSelectedAnimIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    if-ltz v0, :cond_1

    .line 221
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 222
    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 225
    :cond_1
    sget v0, Lcom/android/settings/R$id;->anim_bg:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    sget v1, Lcom/android/settings/R$drawable;->op_custom_aodpreview_none:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 227
    sget v0, Lcom/android/settings/R$id;->bottom_icon_image:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    sget v0, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 232
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$3;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 308
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public saveSelectedAnim()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->setAnimStyle(I)V

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    const-string v0, "status"

    const-string v1, "horizon"

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "purple"

    .line 324
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "gold"

    .line 321
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "red"

    .line 318
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "blue"

    .line 315
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method
