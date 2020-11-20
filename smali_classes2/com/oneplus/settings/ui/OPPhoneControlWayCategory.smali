.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.super Landroidx/preference/Preference;
.source "OPPhoneControlWayCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

.field private mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrIndex:I

.field private mHasInited:Z

.field private mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLayoutResId:I

.field private mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mTempType:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerContainer:Landroid/view/View;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsDeprecated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsNobar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 46
    sget v1, Lcom/android/settings/R$layout;->op_phone_control_way_instructions_category:I

    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    .line 70
    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 71
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 46
    sget v0, Lcom/android/settings/R$layout;->op_phone_control_way_instructions_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    .line 70
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 71
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 46
    sget p3, Lcom/android/settings/R$layout;->op_phone_control_way_instructions_category:I

    iput p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    .line 51
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    .line 52
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    .line 70
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 71
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Lcom/google/android/material/indicator/PageIndicator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    return-object p0
.end method

.method private initViewPage()V
    .locals 18

    move-object/from16 v0, p0

    .line 201
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 211
    sget v2, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 212
    sget v4, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 213
    sget v5, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 214
    sget v4, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 215
    sget v5, Lcom/android/settings/R$string;->oneplus_gesture_navigation_bar_summary_for_deprecated:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 217
    sget v4, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 219
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "op_back_gesture_dark_anim.json"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "op_back_gesture_light_anim.json"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 224
    :goto_0
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 225
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 227
    sget v4, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 228
    sget v6, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 229
    sget v7, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_title:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 230
    sget v6, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 231
    sget v7, Lcom/android/settings/R$string;->oneplus_gesture_navigation_bar_summary_for_deprecated:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 233
    sget v6, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 235
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v7, "op_back_gesture_dark_anim_no_bar.json"

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_2
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v7, "op_back_gesture_light_anim_no_bar.json"

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 240
    :goto_1
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 241
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 244
    sget v6, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 245
    sget v7, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 246
    sget v8, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_title:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 247
    sget v7, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 248
    sget v8, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_summary_deprecated:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 249
    sget v7, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 251
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v7}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v8, "op_back_gesture_dark_anim_deprecated.json"

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_3
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v8, "op_back_gesture_light_anim_deprecated.json"

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 256
    :goto_2
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 257
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 259
    sget v7, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 260
    sget v8, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 261
    sget v9, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_title:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 262
    sget v8, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 263
    sget v9, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_summary:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 264
    sget v8, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 265
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 266
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v9, "op_home_gesture_dark_anim.json"

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    .line 268
    :cond_4
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v9, "op_home_gesture_light_anim.json"

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 270
    :goto_3
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 271
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 274
    sget v8, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 275
    sget v9, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 276
    sget v10, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_title:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 277
    sget v9, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 278
    sget v10, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_summary:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 279
    sget v9, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 280
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 281
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v10, "op_home_gesture_dark_anim_no_bar.json"

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_4

    .line 283
    :cond_5
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v10, "op_home_gesture_light_anim_no_bar.json"

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 285
    :goto_4
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 286
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 288
    sget v9, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 289
    sget v10, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 290
    sget v11, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_title:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 291
    sget v10, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 292
    sget v11, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_summary_deprecated:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 293
    sget v10, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 294
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 295
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v11, "op_home_gesture_dark_anim_deprecated.json"

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5

    .line 297
    :cond_6
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v11, "op_home_gesture_light_anim_deprecated.json"

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 299
    :goto_5
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 300
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 302
    sget v10, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 303
    sget v11, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 304
    sget v12, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_title:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 305
    sget v11, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 306
    sget v12, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_summary:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 307
    sget v11, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 308
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v11}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 309
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_recent_gesture_dark_anim.json"

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_6

    .line 311
    :cond_7
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_recent_gesture_light_anim.json"

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 313
    :goto_6
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 314
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 317
    sget v11, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v11, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 318
    sget v12, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 319
    sget v13, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_title:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 320
    sget v12, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 321
    sget v13, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_summary:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 322
    sget v12, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 323
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 324
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v13, "op_recent_gesture_dark_anim_no_bar.json"

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7

    .line 326
    :cond_8
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v13, "op_recent_gesture_light_anim_no_bar.json"

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 328
    :goto_7
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 329
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 331
    sget v12, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v12, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 332
    sget v13, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 333
    sget v14, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_title:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 334
    sget v13, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 335
    sget v14, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_summary_deprecated:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 336
    sget v13, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 337
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 338
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_recent_gesture_dark_anim_deprecated.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_8

    .line 340
    :cond_9
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_recent_gesture_light_anim_deprecated.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 342
    :goto_8
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v13, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 343
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 345
    sget v13, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 346
    sget v14, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 347
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_guide_title:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 348
    sget v14, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 349
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_guide_summary:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 350
    sget v14, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 351
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 352
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_dark_anim.json"

    invoke-virtual {v14, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_9

    .line 354
    :cond_a
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim.json"

    invoke-virtual {v14, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 356
    :goto_9
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 357
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 360
    sget v14, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v14, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 361
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 362
    sget v3, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_no_bar_guide_title:I

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(I)V

    .line 363
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 364
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_no_bar_guide_summary:I

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 365
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 366
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 367
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_dark_anim_no_bar.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_a

    .line 369
    :cond_b
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim_no_bar.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 371
    :goto_a
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 372
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 374
    sget v3, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 375
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 376
    sget v5, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_no_bar_guide_title:I

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(I)V

    .line 377
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 378
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_guide_summary_deprecated:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 379
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 380
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 381
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_dark_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_b

    .line 383
    :cond_c
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 385
    :goto_b
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 386
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 388
    sget v5, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 389
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v3

    .line 390
    sget v3, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_title:I

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(I)V

    .line 391
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 392
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_summary:I

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 393
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 394
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 395
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_c

    .line 397
    :cond_d
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 399
    :goto_c
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 400
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 402
    sget v3, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 403
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v17, v5

    .line 404
    sget v5, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_title:I

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(I)V

    .line 405
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 406
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_summary:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 407
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 408
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 409
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim_no_bar.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_d

    .line 411
    :cond_e
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_no_bar.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 413
    :goto_d
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 414
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 416
    sget v5, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 417
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 418
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_title:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 419
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 420
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_summary_deprecated:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 421
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 422
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 423
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_e

    .line 425
    :cond_f
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 427
    :goto_e
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 428
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 430
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewGesture()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 440
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_10
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    move-object/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iget p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static is2ButtonEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0086

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isGESTURALEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0086

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isHideBarEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_fullscreen_gesture_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isSideEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gesture_button_side_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 98
    sget v0, Lcom/android/settings/R$id;->always_show_nb_anim:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_always_show_navigation_bar_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_always_show_navigation_bar_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    :goto_0
    sget v0, Lcom/android/settings/R$id;->gesture_page_indicator:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/indicator/PageIndicator;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    .line 106
    sget v0, Lcom/android/settings/R$id;->gesture_anim_viewpager_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    .line 107
    sget v0, Lcom/android/settings/R$id;->gesture_anim_viewpager:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 108
    new-instance v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 109
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViewPage()V

    .line 110
    new-instance v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 191
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/PageIndicator;->setNumPages(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/PageIndicator;->setLocation(F)V

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    const/4 p0, 0x0

    .line 197
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public playCurrentPageAnim(I)V
    .locals 1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 841
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 842
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 843
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 844
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 845
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 846
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 848
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 849
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 850
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 851
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 852
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 854
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 855
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 856
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 857
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 858
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 859
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 860
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 861
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 862
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 863
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 864
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 866
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 867
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 868
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 869
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 870
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 872
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 873
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 874
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 875
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 876
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_0

    .line 878
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 879
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 880
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 881
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 882
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 884
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 885
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 886
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 887
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 888
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 890
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 891
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 892
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 893
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 894
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 784
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 785
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 786
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 787
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 788
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 789
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 791
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 792
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 793
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 794
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 795
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 797
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 798
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 799
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 800
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 801
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 802
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 803
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 804
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 805
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 806
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 807
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 809
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 810
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 811
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 812
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 813
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 815
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 816
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 817
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 818
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 819
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 821
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 822
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 823
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 824
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 825
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 827
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 828
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 829
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 830
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 831
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 833
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 834
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 835
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 836
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 837
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 727
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 728
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 729
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 730
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 731
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 732
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 734
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 735
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 736
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 737
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 738
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 740
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 741
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 742
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 743
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 744
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 745
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 746
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 747
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 748
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 749
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 750
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 752
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 753
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 754
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 755
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 756
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 758
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 759
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 760
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 761
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 762
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 764
    :cond_8
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 765
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 766
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 767
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 768
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 770
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 771
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 772
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 773
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 774
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 776
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 777
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 778
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 779
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 780
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 670
    :cond_9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 671
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 672
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 673
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 674
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 675
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 677
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 678
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 679
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 680
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 681
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 683
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 684
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 685
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 686
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 687
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 688
    :cond_a
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 689
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 690
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 691
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 692
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 693
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 695
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 696
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 697
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 698
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 699
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 701
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 702
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 703
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 704
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 705
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 707
    :cond_b
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 708
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 709
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 710
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 711
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 713
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 714
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 715
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 716
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 717
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 719
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 720
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 721
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 722
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 723
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 613
    :cond_c
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 614
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 615
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 616
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 617
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 618
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 620
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 621
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 622
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 623
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 624
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 626
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 627
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 628
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 629
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 630
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 631
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 632
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 633
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 634
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 635
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 636
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 638
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 639
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 640
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 641
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 642
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 644
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 645
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 646
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 647
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 648
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 650
    :cond_e
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 651
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 652
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 653
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 654
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 656
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 657
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 658
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 659
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 660
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 662
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 663
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 664
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 665
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 666
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_0
    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 575
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 576
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 577
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 578
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 579
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 580
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 581
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 582
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 583
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 584
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 586
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 587
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 588
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 589
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 590
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 593
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 594
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 595
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 596
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 597
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 598
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 599
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 600
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 601
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 603
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 604
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 605
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 606
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 607
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setViewType(I)V
    .locals 3

    .line 495
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 499
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 511
    iget p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    .line 502
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setViewType(II)V
    .locals 3

    .line 519
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 523
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 539
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 542
    iget p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    .line 531
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 535
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    .line 536
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 526
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 2

    .line 450
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_5

    .line 451
    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    if-nez v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isGESTURALEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isGESTURALEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 462
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 552
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 553
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 554
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 555
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 556
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 557
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 558
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 559
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 560
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 562
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 563
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 564
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 565
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 566
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
