.class public Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabUtils.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/TabUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPendingSelection:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/tabs/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 86
    iget-object p3, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/tabs/TabLayout;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 90
    iget p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mScrollState:I

    if-nez p1, :cond_0

    .line 92
    iget p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 93
    invoke-virtual {p3, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 94
    iput p2, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    return-void
.end method
