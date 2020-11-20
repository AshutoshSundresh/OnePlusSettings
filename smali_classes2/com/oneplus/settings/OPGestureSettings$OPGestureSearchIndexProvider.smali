.class Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OPGestureSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 520
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 521
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 559
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->access$200()Ljava/util/List;

    move-result-object v0

    .line 561
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "open_light_device_key"

    .line 562
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "draw_o_start_camera_key"

    .line 563
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_2
    iget-boolean p0, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "oneplus_draw_o_start_app"

    .line 567
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_v_start_app"

    .line 568
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_s_start_app"

    .line 569
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_m_start_app"

    .line 570
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_w_start_app"

    .line 571
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "op_fingerprint_gesture_swipe_down_up"

    .line 575
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    move-result p0

    const-string v1, "gesture_to_control_calls"

    if-eqz p0, :cond_6

    const-string p0, "gesture_to_answer_call"

    goto :goto_0

    :cond_6
    move-object p0, v1

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "fingerprint_gesture_control"

    .line 579
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "op_fingerprint_long_press_camera_shot"

    .line 580
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "OP_FEATURE_ONE_HAND_MODE"

    .line 583
    invoke-static {p0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 584
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBeta()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "one_hand_mode"

    .line 585
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_8
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->hasOnePlusDialer(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 588
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "rotation_silent_enable"

    .line 589
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-boolean p0, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez p0, :cond_0

    return-object p2

    .line 531
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 532
    sget p1, Lcom/android/settings/R$xml;->op_gesture_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 533
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
