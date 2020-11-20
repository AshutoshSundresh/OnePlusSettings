.class public Lcom/google/android/material/picker/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# instance fields
.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmGroup:Landroid/widget/RadioGroup;

.field private final mAmPmParent:Landroid/widget/LinearLayout;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mErrorLabel:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private final mHeaderLabel:Landroid/widget/TextView;

.field private final mHourEditText:Landroid/widget/EditText;

.field private mHourFormatStartsAtZero:Z

.field private final mHourLabel:Landroid/widget/TextView;

.field private final mInputBlock:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mLabelAlphaDuration:I

.field private mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

.field private final mMinuteEditText:Landroid/widget/EditText;

.field private final mMinuteLabel:Landroid/widget/TextView;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mTimeColorStates:[I

.field private mTimeLabelColorStates:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x2

    new-array p4, p3, [I

    .line 66
    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    new-array p4, p3, [I

    .line 67
    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeLabelColorStates:[I

    .line 218
    new-instance p4, Lcom/google/android/material/picker/TextInputTimePickerView$5;

    invoke-direct {p4, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$5;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/google/android/material/R$layout;->time_picker_text_input_material:I

    const/4 v1, 0x1

    invoke-virtual {p4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    sget p4, Lcom/google/android/material/R$id;->input_am_pm_parent:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    .line 92
    sget p4, Lcom/google/android/material/R$id;->input_block:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mInputBlock:Landroid/view/View;

    .line 93
    sget p4, Lcom/google/android/material/R$id;->input_hour:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 94
    sget p4, Lcom/google/android/material/R$id;->input_minute:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 98
    sget p4, Lcom/google/android/material/R$id;->top_label:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHeaderLabel:Landroid/widget/TextView;

    .line 99
    sget p4, Lcom/google/android/material/R$id;->label_error:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    .line 100
    sget p4, Lcom/google/android/material/R$id;->label_hour:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    .line 101
    sget p4, Lcom/google/android/material/R$id;->label_minute:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    new-array p4, p3, [I

    .line 102
    sget v0, Lcom/google/android/material/R$attr;->pickerColorActivated:I

    const/4 v2, 0x0

    aput v0, p4, v2

    sget v0, Lcom/google/android/material/R$attr;->pickerColorUnActivated:I

    aput v0, p4, v1

    new-array p3, p3, [I

    aput v0, p3, v2

    .line 103
    sget v0, Lcom/google/android/material/R$attr;->pickerInputLabelUnActivated:I

    aput v0, p3, v1

    .line 104
    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$integer;->op_control_time_325:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    .line 106
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    const/high16 v3, -0x1000000

    invoke-virtual {p4, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v0, v2

    .line 107
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    invoke-virtual {p4, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v0, v1

    .line 108
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 110
    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeLabelColorStates:[I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    aput p4, p3, v2

    .line 111
    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeLabelColorStates:[I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    aput p4, p3, v1

    .line 112
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$1;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$2;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$3;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$4;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$4;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    invoke-static {p1}, Lcom/google/android/material/picker/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 180
    sget p2, Lcom/google/android/material/R$id;->am_pm_group:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    .line 181
    sget p2, Lcom/google/android/material/R$id;->am_label2:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    .line 182
    aget-object p3, p1, v2

    invoke-static {p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 186
    sget p2, Lcom/google/android/material/R$id;->pm_label2:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    .line 187
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/TextInputTimePickerView;ILandroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/TextInputTimePickerView;)[I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->resetInputTimeLabelState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/TextInputTimePickerView;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->updateAmPmLabel(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/TextInputTimePickerView;)Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    return-object p0
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 319
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 320
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 321
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private getHourOfDayFromLocalizedHour(I)I
    .locals 2

    .line 420
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    iget-boolean p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez p0, :cond_2

    const/16 p0, 0x18

    if-ne p1, p0, :cond_2

    move p1, v1

    goto :goto_0

    .line 425
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    move p1, v1

    .line 428
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p1, p1, 0xc

    :cond_2
    :goto_0
    return p1
.end method

.method private isValidLocalizedHour(I)Z
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 414
    iget-boolean p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    :goto_0
    add-int/2addr p0, v0

    if-lt p1, v0, :cond_1

    if-gt p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseAndSetHourInternal(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 381
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 382
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->isValidLocalizedHour(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 383
    iget-boolean v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-eqz v1, :cond_0

    move v2, v0

    .line 384
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0xb

    .line 385
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    .line 386
    invoke-static {p1, v2, v1}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result p0

    invoke-interface {v3, v0, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v0

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result p0

    invoke-interface {v1, v0, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method private parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 399
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    invoke-interface {p0, v2, p1}, Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v2

    .line 401
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {p1, v0, v1}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {p0, v2, p1}, Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private resetInputTimeLabelState(Z)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeLabelColorStates:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeLabelColorStates:[I

    if-eqz p1, :cond_1

    aget p0, p0, v2

    goto :goto_1

    :cond_1
    aget p0, p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1

    .line 206
    invoke-static {}, Lcom/oneplus/common/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private setError(Z)V
    .locals 4

    .line 347
    iput-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mErrorShowing:Z

    .line 349
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSoftInput(Landroid/view/View;)V
    .locals 2

    .line 196
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private updateAmPmLabel(Z)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 240
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 244
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 245
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mTimeColorStates:[I

    aget v1, v3, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 247
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public getInputBlock()Landroid/view/View;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mInputBlock:Landroid/view/View;

    return-object p0
.end method

.method public setAmPmAtStart(Z)V
    .locals 2

    .line 287
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_2

    .line 292
    iput-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIsAmPmAtStart:Z

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 296
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 300
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method setHourFormat(I)V
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 331
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 308
    iput-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    .line 309
    iget-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIsAmPmAtStart:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setAmPmAtStart(Z)V

    :cond_0
    return-void
.end method

.method setListener(Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    return-void
.end method

.method public showInputBlock(Z)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mInputBlock:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method public showLabels(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 259
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHeaderLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 263
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 269
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 270
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 272
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHeaderLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 275
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mLabelAlphaDuration:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 276
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method updateSeparator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method updateTextInputValues(IIIZZ)V
    .locals 1

    .line 364
    iput-boolean p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mIs24Hour:Z

    .line 365
    iput-boolean p5, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 367
    iget-object p5, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mAmPmGroup:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/16 p4, 0x8

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    invoke-virtual {p5, p4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const/4 p4, 0x1

    if-nez p3, :cond_1

    move p3, p4

    goto :goto_1

    :cond_1
    move p3, v0

    .line 368
    :goto_1
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/TextInputTimePickerView;->updateAmPmLabel(Z)V

    .line 369
    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-array p5, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, v0

    const-string p1, "%d"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 372
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 374
    iget-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mErrorShowing:Z

    if-eqz p1, :cond_2

    .line 375
    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->validateInput()Z

    :cond_2
    return-void
.end method

.method validateInput()Z
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 337
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v1, v0, 0x1

    .line 338
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setError(Z)V

    return v0
.end method
