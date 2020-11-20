.class Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;
.super Ljava/lang/Object;
.source "LocalePickerWithRegionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

.field final synthetic val$selector:Lcom/android/internal/app/LocalePickerWithRegion;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;Lcom/android/internal/app/LocalePickerWithRegion;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->val$selector:Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    .line 55
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->val$selector:Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
