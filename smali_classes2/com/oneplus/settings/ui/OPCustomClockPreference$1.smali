.class Lcom/oneplus/settings/ui/OPCustomClockPreference$1;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 177
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    if-eqz p1, :cond_1

    .line 178
    iget-boolean v0, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->hasInfo:Z

    if-eqz v0, :cond_1

    .line 183
    iget p1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v0, 0xb

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    move p1, v1

    move v0, p1

    move v2, v0

    goto :goto_0

    .line 186
    :cond_0
    sget v1, Lcom/android/settings/R$string;->op_aod_parsons_info_title:I

    .line 187
    sget p1, Lcom/android/settings/R$string;->op_aod_parsons_info_message:I

    .line 188
    sget v0, Lcom/android/settings/R$string;->op_aod_parsons_info_button:I

    .line 189
    sget v2, Lcom/android/settings/R$drawable;->op_parsons_info_image:I

    move v3, v0

    move v0, p1

    move p1, v1

    move v1, v2

    move v2, v3

    .line 192
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p0, v1, p1, v0, v2}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;IIII)V

    :cond_1
    return-void
.end method
