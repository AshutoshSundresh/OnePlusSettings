.class Lcom/oneplus/settings/ui/OPMemberPreference$1;
.super Ljava/lang/Object;
.source "OPMemberPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPMemberPreference;->setClickBgHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPMemberPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPMemberPreference;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPMemberPreference$1;->this$0:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLlContent.getHeight():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference$1;->this$0:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPMemberPreference;->access$100(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMemberPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference$1;->this$0:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPMemberPreference;->access$200(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference$1;->this$0:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPMemberPreference;->access$100(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPMemberPreference$1;->this$0:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPMemberPreference;->access$200(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference$1;->this$0:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPMemberPreference;->access$100(Lcom/oneplus/settings/ui/OPMemberPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
