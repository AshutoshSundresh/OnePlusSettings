.class public Lcom/google/android/material/appbar/CollapsingAppbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingAppbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAYLT_RES_STYLE:I


# instance fields
.field private appbar:Lcom/google/android/material/appbar/Appbar;

.field final collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field private isOverFling:Z

.field lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private final mAppbarHeight:I

.field private mCollapsed:Z

.field private mCollapsedSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTitleTextColor:Landroid/content/res/ColorStateList;

.field private mDisableCollapsed:Z

.field private mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

.field private mExpandSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTitleTextColor:Landroid/content/res/ColorStateList;

.field private mPrepareDraw:Z

.field private mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

.field private mSyncText:Ljava/lang/CharSequence;

.field private menuMargin:I

.field private menuToolbar:Landroidx/appcompat/widget/Toolbar;

.field private minHeight:I

.field private onCollapsedSyncListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

.field private onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshTitlebar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private syncSubtitile:Ljava/lang/CharSequence;

.field private titlebarDirectChild:Landroid/view/View;

.field private final tmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_CollapsingAppbarLayout:I

    sput v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->DEFAYLT_RES_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 128
    sget v0, Lcom/google/android/material/R$attr;->collapsingAppbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 109
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    const/4 v2, 0x0

    .line 111
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    .line 112
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    .line 133
    new-instance v3, Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-direct {v3, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    iput-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    .line 134
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    sget-object v7, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout:[I

    sget v9, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->DEFAYLT_RES_STYLE:I

    new-array v10, v2, [I

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 137
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    .line 145
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 144
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextGravity(I)V

    .line 148
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    .line 149
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 148
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextGravity(I)V

    .line 153
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_drawLineEnabled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setDrawLine(Z)V

    .line 155
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMargin:I

    .line 159
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 162
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 164
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedAppbarHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    .line 169
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 170
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginStart:I

    .line 171
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 173
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 174
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginEnd:I

    .line 175
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    .line 177
    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 178
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginTop:I

    .line 179
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    .line 181
    :cond_3
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 182
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginBottom:I

    .line 183
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    .line 186
    :cond_4
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_titleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    .line 187
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_disableCollapsed:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    .line 189
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_insetSubtitleIconFlag:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isInsetSubtitleImage(Z)V

    .line 191
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_MultiCollapsingTitle_ExpandedTitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    .line 197
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    .line 201
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 202
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextAppearance:I

    .line 203
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 202
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    .line 205
    :cond_5
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 206
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextAppearance:I

    .line 207
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 206
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    .line 209
    :cond_6
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 210
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mExpandedTitleTextColor:Landroid/content/res/ColorStateList;

    .line 211
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_7
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 214
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsedTitleTextColor:Landroid/content/res/ColorStateList;

    .line 215
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 217
    :cond_8
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 218
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mExpandSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 219
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_9
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 222
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsedSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 223
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 227
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_MultiCollapsingTitle_ExpandedSubtitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    .line 229
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Subtitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    .line 233
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 234
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextAppearance:I

    .line 235
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 234
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    .line 237
    :cond_b
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 238
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextAppearance:I

    .line 239
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 238
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    .line 242
    :cond_c
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitleIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitleIcon:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 245
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawableToSubtitleBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 246
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitleImage(Landroid/graphics/Bitmap;)V

    .line 250
    :cond_d
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_scrimVisibleHeightTrigger:I

    .line 251
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 253
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_scrimAnimationDuration:I

    const/16 p3, 0x1a9

    .line 254
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    .line 258
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_contentScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 259
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_statusBarScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 262
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_minHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    if-lez p2, :cond_e

    .line 264
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 267
    :cond_e
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_f

    .line 268
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 271
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 275
    new-instance p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$1;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onCollapsedSyncListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return p0
.end method

.method static synthetic access$802(Lcom/google/android/material/appbar/CollapsingAppbarLayout;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    return-object p0
.end method

.method private animateScrim(I)V
    .locals 4

    .line 851
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 852
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 853
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 854
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 855
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 859
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$3;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 866
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 869
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 870
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureTitlebar()V
    .locals 6

    .line 462
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 468
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 483
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 484
    instance-of v5, v4, Lcom/google/android/material/appbar/Appbar;

    if-eqz v5, :cond_1

    .line 485
    check-cast v4, Lcom/google/android/material/appbar/Appbar;

    const/4 v2, 0x1

    .line 486
    invoke-virtual {v4, v2}, Lcom/google/android/material/appbar/Appbar;->limitDividerShown(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 490
    :goto_1
    iput-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 493
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v2, :cond_6

    .line 495
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    .line 496
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 497
    instance-of v5, v4, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 498
    move-object v0, v4

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 502
    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 505
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateDummyView()V

    .line 506
    iput-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    return-void
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 722
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 723
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 726
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;
    .locals 2

    .line 730
    sget v0, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 733
    sget v1, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isTitlebarChild(Landroid/view/View;)Z
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 1

    .line 1674
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDummyView()V
    .locals 2

    .line 531
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 534
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 535
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 540
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1612
    instance-of p0, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 407
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 411
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    .line 412
    iget-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez v1, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 414
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_2

    .line 420
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    if-eqz v0, :cond_2

    .line 421
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->draw(Landroid/graphics/Canvas;)V

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-lez v0, :cond_4

    .line 432
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 433
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 434
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isTitlebarChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 447
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 450
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 971
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 973
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 977
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 978
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 981
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 982
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 984
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    if-eqz v1, :cond_2

    .line 985
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 989
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public drawableToSubtitleBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 292
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 295
    :goto_0
    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 297
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 298
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;
    .locals 1

    .line 1617
    new-instance p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1622
    new-instance v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1627
    new-instance p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCollapsedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1414
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCollapsedSubtitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getCollapsedTitleGravity()I
    .locals 0

    .line 1212
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCollapsedTextGravity()I

    move-result p0

    return p0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1376
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCollapsedTitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 937
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getExpandedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1431
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedTitleGravity()I
    .locals 0

    .line 1359
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTextGravity()I

    move-result p0

    return p0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 0

    .line 1516
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    return p0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 0

    .line 1497
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    return p0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 0

    .line 1459
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    return p0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 0

    .line 1478
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    return p0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1393
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getFraction()F
    .locals 0

    .line 1548
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpansionFraction()F

    move-result p0

    return p0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 2

    .line 1667
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v0

    .line 1668
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 1669
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method getScrimAlpha()I
    .locals 0

    .line 885
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    return p0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1607
    iget-wide v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1575
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    return v0

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1583
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 1586
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1591
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getScrollOffsetHeight()I
    .locals 1

    .line 1072
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1145
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 788
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isDisableCollapsed()Z
    .locals 0

    .line 1564
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return p0
.end method

.method public isDisableScroll()Z
    .locals 0

    .line 1560
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return p0
.end method

.method public isInsetSubtitleImage(Z)V
    .locals 0

    .line 764
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInsetImage(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 309
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 311
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 313
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 314
    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 316
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 319
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 366
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 369
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    if-eqz v0, :cond_2

    .line 373
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    .line 376
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 574
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 576
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    .line 579
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 580
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 581
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 582
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 585
    iget-boolean v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez v4, :cond_0

    .line 586
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez p1, :cond_2

    .line 595
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 596
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 605
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz p1, :cond_18

    .line 609
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v0

    .line 612
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 613
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v2

    .line 614
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v3, v4}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 615
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    .line 616
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 617
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->op_app_bar_height_with_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v1

    if-gt v3, v5, :cond_6

    .line 618
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 620
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 621
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 623
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_c

    .line 624
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v1, :cond_a

    const/4 v1, 0x2

    if-eq v5, v1, :cond_9

    const/4 v1, 0x3

    if-eq v5, v1, :cond_8

    .line 638
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_three_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 635
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_three_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 632
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_two_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 629
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_one_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 626
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 642
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->syncSubtitile:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 643
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 645
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 646
    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 647
    invoke-virtual {v7}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginTop()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 648
    invoke-virtual {v8}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/2addr v8, v3

    .line 645
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedBounds(IIII)V

    .line 652
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_e

    .line 653
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 654
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    .line 655
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_6

    :cond_e
    move v1, v0

    .line 659
    :goto_6
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/16 v3, 0x2a

    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 660
    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_f

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    goto :goto_7

    :cond_10
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 661
    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_11

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    :goto_7
    float-to-int v4, v4

    :goto_8
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 662
    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x8

    if-nez v6, :cond_12

    iget v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    goto :goto_9

    :cond_12
    iget v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v6, v8

    :goto_9
    add-int/2addr v5, v6

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 663
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_13

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    goto :goto_a

    :cond_14
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 664
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_15

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    goto :goto_b

    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    :goto_a
    float-to-int p1, p1

    :goto_b
    sub-int/2addr p4, p1

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 665
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_16

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    goto :goto_c

    :cond_16
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_c
    sub-int/2addr p5, p1

    .line 659
    invoke-virtual {v2, v4, v5, p4, p5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedBounds(IIII)V

    .line 667
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 668
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_17

    .line 669
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 670
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setAppbarMargin(IIII)V

    .line 673
    :cond_17
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    .line 678
    :cond_18
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz p1, :cond_1f

    .line 679
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 681
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 682
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 683
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 685
    :cond_19
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 686
    new-instance p2, Landroid/text/SpannableString;

    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 687
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$color;->op_control_accent_color_red_default:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 688
    iget-object p4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/16 p5, 0x11

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 689
    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 694
    :cond_1a
    :goto_d
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_1d

    if-ne p1, p0, :cond_1b

    goto :goto_e

    .line 702
    :cond_1b
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_1c

    .line 703
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 705
    :cond_1c
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 695
    :cond_1d
    :goto_e
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p1, :cond_1e

    .line 696
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 698
    :cond_1e
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 710
    :cond_1f
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    .line 713
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez p1, :cond_20

    .line 714
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_10
    if-ge v0, p1, :cond_20

    .line 715
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 551
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 552
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_0

    .line 553
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 555
    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 558
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 559
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 561
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 562
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-lez v0, :cond_3

    .line 567
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 568
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 456
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    .line 457
    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 1228
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    if-eqz v2, :cond_1

    .line 1230
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncLeftLocation()F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncRightLocation()F

    move-result v2

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    .line 1231
    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncTopLocation()F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncBottomLocation()F

    move-result v0

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    invoke-interface {v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;->onClick()V

    .line 1241
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 381
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 389
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public scrollTop()V
    .locals 1

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    .line 343
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    return-void
.end method

.method public setCollapsedSubtitleTextAppearance(I)V
    .locals 0

    .line 1161
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    return-void
.end method

.method public setCollapsedSubtitleTextColor(I)V
    .locals 0

    .line 1188
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1402
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextGravity(I)V

    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0

    .line 1170
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1368
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 900
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 902
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 903
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 904
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 906
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1

    .line 917
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1

    .line 927
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDisableCollapsed(Z)V
    .locals 0

    .line 1552
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return-void
.end method

.method public setDisableScroll(Z)V
    .locals 0

    .line 1556
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return-void
.end method

.method public setDrawLineEnabled(Z)V
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setDrawLine(Z)V

    return-void
.end method

.method public setExpandedSubtitleTextAppearance(I)V
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    return-void
.end method

.method public setExpandedSubtitleTextColor(I)V
    .locals 0

    .line 1335
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1344
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1423
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setExpandedTitleAlpha(I)V
    .locals 13

    .line 1080
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1081
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1082
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1083
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1086
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1087
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1088
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1089
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1090
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1091
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1092
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1093
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1094
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 1095
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1096
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1097
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    mul-int/2addr p1, v8

    div-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1098
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1099
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1100
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, p1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1101
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v9, v3, [[I

    const/4 v10, 0x1

    new-array v11, v10, [I

    const v12, 0x101009e

    aput v12, v11, v2

    aput-object v11, v9, v2

    new-array v11, v2, [I

    aput-object v11, v9, v10

    new-array v11, v3, [I

    .line 1105
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v11, v2

    aput v0, v11, v10

    invoke-direct {v5, v9, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1101
    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    .line 1108
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v10, [I

    aput v12, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v10

    new-array v4, v3, [I

    .line 1112
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v1, v4, v10

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1108
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1115
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v10, [I

    aput v12, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v10

    new-array v4, v3, [I

    .line 1119
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v6, v4, v10

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1115
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1122
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v10, [I

    aput v12, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v10

    new-array v4, v3, [I

    .line 1126
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v1, v4, v10

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1122
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1129
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v1, v10, [I

    aput v12, v1, v2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    aput-object v1, v0, v10

    new-array v1, v3, [I

    .line 1133
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    aput v6, v1, v10

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1129
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 0

    .line 1352
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextGravity(I)V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1526
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    .line 1527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1507
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    .line 1508
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1469
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 1470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1488
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    .line 1489
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    return-void
.end method

.method public setExpandedTitleTextColor(I)V
    .locals 0

    .line 1317
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1385
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setOverFling(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return-void
.end method

.method public setPrepareDraw(Z)V
    .locals 0

    .line 1406
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 874
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_0

    .line 877
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 879
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    .line 880
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0

    .line 1600
    iput-wide p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1

    .line 1540
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1541
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 1543
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 827
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 840
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimsAreShown:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 842
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->animateScrim(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 844
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimAlpha(I)V

    .line 846
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimsAreShown:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 954
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 956
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 957
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 959
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 960
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 959
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 961
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 962
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 963
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 965
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1

    .line 1020
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1

    .line 1030
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setImageDrawable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSyncSubtitleAlpha(I)V
    .locals 11

    .line 1034
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1035
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1036
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1037
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1038
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1041
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1042
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1043
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1044
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr p1, v6

    div-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1045
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1047
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, p1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1048
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v7, v3, [[I

    const/4 v8, 0x1

    new-array v9, v8, [I

    const v10, 0x101009e

    aput v10, v9, v2

    aput-object v9, v7, v2

    new-array v9, v2, [I

    aput-object v9, v7, v8

    new-array v9, v3, [I

    .line 1052
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v9, v2

    aput v0, v9, v8

    invoke-direct {v5, v7, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1048
    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    .line 1055
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v8, [I

    aput v10, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v8

    new-array v4, v3, [I

    .line 1059
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v1, v4, v8

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1055
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1062
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v8, [I

    aput v10, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v8

    new-array v3, v3, [I

    .line 1066
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v2

    aput v1, v3, v8

    invoke-direct {p1, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1062
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSyncTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1076
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 746
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateContentDescriptionFromTitle()V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 801
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    .line 802
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateContentDescriptionFromTitle()V

    .line 803
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateDummyView()V

    .line 804
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1000
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1003
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1007
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1662
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 995
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
