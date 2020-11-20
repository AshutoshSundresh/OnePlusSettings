.class Lcom/oneplus/settings/OPScreenResolutionAdjust$2;
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


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    iput p2, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 292
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    iget p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->val$mode:I

    invoke-static {p1, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->access$000(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V

    return-void
.end method
