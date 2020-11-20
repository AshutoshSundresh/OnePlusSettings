.class public Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;,
        Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;,
        Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/edgeeffect/SpringRelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

.field private mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mDampedScrollShift:F

.field private mDamping:F

.field private mDisableEffectBottom:Z

.field private mDisableEffectTop:Z

.field private mDistance:F

.field private mHorizontal:Z

.field private mPullCount:I

.field private mReadyToGo:Z

.field private final mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field protected final mSpringViews:Landroid/util/SparseBooleanArray;

.field private mStif:F

.field private mVelocity_multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    .line 39
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 40
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mStif:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 41
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDamping:F

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectTop:Z

    .line 44
    iput-boolean p3, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectBottom:Z

    .line 60
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    .line 65
    iput-boolean p3, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    .line 67
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDistance:F

    .line 68
    iput p3, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mPullCount:I

    .line 82
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p3, p0, v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p3, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 83
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 84
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 85
    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 83
    invoke-virtual {p3, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mVelocity_multiplier:F

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mReadyToGo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDistance:F

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDistance:F

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mPullCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mPullCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->setActiveEdge(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectTop:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectBottom:Z

    return p0
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    const v1, -0x800001

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 164
    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectTop:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectBottom:Z

    if-eqz v0, :cond_2

    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v0, :cond_3

    .line 171
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 173
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 174
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_4
    :goto_0
    const-string p0, "SpringRelativeLayout"

    const-string p1, "animation parameter out of range!"

    .line 159
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setActiveEdge(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    .line 133
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method public addSpringView(I)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->createViewEdgeEffectFactory(Z)Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    move-result-object p0

    return-object p0
.end method

.method public createViewEdgeEffectFactory(Z)Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
    .locals 1

    .line 306
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    .line 307
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;)V

    return-object p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 110
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 113
    iget-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->getCanvasClipLeftForOverscroll()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 115
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->getCanvasClipTopForOverscroll()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 118
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 122
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0

    .line 126
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public getCanvasClipLeftForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 144
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDistance:F

    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mPullCount:I

    .line 154
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->finishScrollWithVelocity(F)V

    return-void
.end method

.method public setAnimationEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    return-void
.end method

.method public setBouncy(F)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDamping:F

    .line 359
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDamping:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 137
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 138
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    .line 139
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectDisable(I)V
    .locals 3

    .line 376
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    move v0, v1

    :goto_0
    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 381
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectTop:Z

    :cond_1
    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    .line 385
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mDisableEffectBottom:Z

    :cond_2
    return-void
.end method

.method public setStiffness(F)V
    .locals 2

    const v0, 0x44bb8000    # 1500.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 353
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mStif:F

    .line 354
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mStif:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public setVelocityMultiplier(F)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->mVelocity_multiplier:F

    return-void
.end method
