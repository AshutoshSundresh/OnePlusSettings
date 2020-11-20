.class Lcom/google/android/material/picker/DayPickerView$2;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/DayPickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DayPickerView;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    .line 421
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    .line 422
    iget-object p2, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/DayPickerView;->access$100(Lcom/google/android/material/picker/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 423
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p0}, Lcom/google/android/material/picker/DayPickerView;->access$200(Lcom/google/android/material/picker/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p0, p1}, Lcom/google/android/material/picker/DayPickerView;->access$300(Lcom/google/android/material/picker/DayPickerView;I)V

    return-void
.end method
