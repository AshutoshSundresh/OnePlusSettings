.class public Lcom/google/android/material/picker/DatePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mDatePicker:Lcom/google/android/material/picker/DatePicker;

.field private mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

.field private final mValidationCallback:Lcom/google/android/material/picker/DatePicker$ValidationCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V
    .locals 3

    .line 98
    invoke-static {p1, p2}, Lcom/google/android/material/picker/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 235
    new-instance p1, Lcom/google/android/material/picker/DatePickerDialog$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/picker/DatePickerDialog$2;-><init>(Lcom/google/android/material/picker/DatePickerDialog;)V

    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mValidationCallback:Lcom/google/android/material/picker/DatePicker$ValidationCallback;

    .line 100
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 102
    sget v0, Lcom/google/android/material/R$layout;->op_control_date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setShowInBottom(Z)V

    .line 104
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x104000a

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p4, :cond_0

    .line 110
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 p1, 0x2

    .line 111
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p6

    const/4 p1, 0x5

    .line 112
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 115
    :cond_0
    sget p1, Lcom/google/android/material/R$id;->datePicker:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/DatePicker;

    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    .line 116
    invoke-virtual {p1, p5, p6, p7, p0}, Lcom/google/android/material/picker/DatePicker;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0x801

    const/16 p4, 0xb

    const/16 p5, 0x1f

    .line 119
    invoke-virtual {p1, p2, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 120
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/google/android/material/picker/DatePicker;->setMaxDate(J)V

    .line 121
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/16 p2, 0x76d

    const/4 p4, 0x0

    .line 122
    invoke-virtual {p1, p2, p4, v0}, Ljava/util/Calendar;->set(III)V

    .line 123
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/google/android/material/picker/DatePicker;->setMinDate(J)V

    .line 125
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mValidationCallback:Lcom/google/android/material/picker/DatePicker$ValidationCallback;

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/DatePicker;->setValidationCallback(Lcom/google/android/material/picker/DatePicker$ValidationCallback;)V

    .line 127
    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;III)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 73
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/picker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x10104ac

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getDatePicker()Lcom/google/android/material/picker/DatePicker;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 185
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p2}, Lcom/google/android/material/picker/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    .line 186
    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getMonth()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->getDayOfMonth()I

    move-result p0

    .line 185
    invoke-interface {p1, p2, v0, v1, p0}, Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/google/android/material/picker/DatePicker;III)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/google/android/material/picker/DatePicker;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 228
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 229
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 230
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 231
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 232
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/google/android/material/picker/DatePicker;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 219
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public show()V
    .locals 2

    .line 142
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 143
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/DatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/DatePickerDialog$1;-><init>(Lcom/google/android/material/picker/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
