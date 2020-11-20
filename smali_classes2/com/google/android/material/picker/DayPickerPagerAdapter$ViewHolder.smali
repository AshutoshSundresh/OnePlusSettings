.class Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final calendar:Lcom/google/android/material/picker/SimpleMonthView;

.field public final container:Landroid/view/View;

.field public final position:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/google/android/material/picker/SimpleMonthView;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->position:I

    .line 329
    iput-object p2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 330
    iput-object p3, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    return-void
.end method
