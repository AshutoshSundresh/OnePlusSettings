.class Lcom/google/android/material/picker/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(II)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 977
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0, p2, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1300(Lcom/google/android/material/picker/TimePickerClockDelegate;II)V

    goto :goto_0

    .line 974
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    const/4 p1, 0x0

    invoke-static {p0, p2, v0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$900(Lcom/google/android/material/picker/TimePickerClockDelegate;IIZ)V

    :goto_0
    return-void
.end method
