.class Lcom/google/android/material/picker/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/DatePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DatePickerDialog;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 146
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {p1}, Lcom/google/android/material/picker/DatePickerDialog;->access$000(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {p1}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker;->getMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    .line 150
    invoke-static {p1}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker;->isYearPickerShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {p0}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->setCurrentYear()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {p1}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 154
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {p1}, Lcom/google/android/material/picker/DatePickerDialog;->access$000(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {v0}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {v1}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    .line 155
    invoke-static {v2}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/picker/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-static {v3}, Lcom/google/android/material/picker/DatePickerDialog;->access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/picker/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 154
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/google/android/material/picker/DatePicker;III)V

    .line 156
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog$1;->this$0:Lcom/google/android/material/picker/DatePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
