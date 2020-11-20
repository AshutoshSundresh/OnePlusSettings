.class Lcom/oneplus/settings/OPScreenResolutionAdjust$1;
.super Ljava/lang/Object;
.source "OPScreenResolutionAdjust.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 297
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
