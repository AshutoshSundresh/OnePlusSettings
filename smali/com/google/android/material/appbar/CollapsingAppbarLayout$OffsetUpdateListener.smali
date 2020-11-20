.class Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingAppbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingAppbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 9

    .line 1683
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$600(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$700(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 1686
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    iput p2, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    .line 1688
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1690
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v1, :cond_4

    .line 1691
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1692
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 1693
    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v6

    .line 1695
    iget v7, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    if-eq v7, v3, :cond_2

    goto :goto_2

    :cond_2
    neg-int v3, p2

    int-to-float v3, v3

    .line 1701
    iget v4, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    :cond_3
    neg-int v3, p2

    .line 1697
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1698
    invoke-virtual {v5, v4}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v0, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v3

    .line 1697
    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1709
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    .line 1711
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    iget-object v2, v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    if-lez p1, :cond_5

    .line 1712
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1716
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1717
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 1718
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v1

    div-float/2addr p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_6

    .line 1719
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$802(Lcom/google/android/material/appbar/CollapsingAppbarLayout;I)I

    .line 1721
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 1722
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1723
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->control_empty_image_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1724
    invoke-static {v5}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v6}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyPaddingBottom()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1725
    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyPaddingBottom()I

    move-result v7

    div-int/2addr v1, v3

    if-le v7, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1726
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->control_empty_image_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    :cond_7
    sub-int/2addr v6, v0

    .line 1723
    invoke-virtual {p2, v2, v4, v5, v6}, Lcom/google/android/material/emptyview/EmptyPageView;->setEmptyPadding(IIII)V

    .line 1728
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1729
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    iget-object p2, p2, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    .line 1731
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1732
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;->onFractionChanged(F)V

    .line 1734
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1735
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;->onFractionChanged(F)V

    :cond_b
    :goto_3
    return-void
.end method
