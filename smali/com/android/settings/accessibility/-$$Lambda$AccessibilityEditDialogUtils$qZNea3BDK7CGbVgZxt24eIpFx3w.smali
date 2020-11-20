.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$qZNea3BDK7CGbVgZxt24eIpFx3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$qZNea3BDK7CGbVgZxt24eIpFx3w;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$qZNea3BDK7CGbVgZxt24eIpFx3w;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$qZNea3BDK7CGbVgZxt24eIpFx3w;->f$0:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$qZNea3BDK7CGbVgZxt24eIpFx3w;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->lambda$initAdvancedWidget$1(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
