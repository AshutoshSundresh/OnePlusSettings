.class Lcom/google/android/material/picker/TimePickerClockDelegate;
.super Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;,
        Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

.field private mDuration:I

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderOffset:I

.field private mHeaderPositionY:I

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/google/android/material/picker/NumericTextView;

.field private mInputBlockPositionY:I

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mIsToggleTimeMode:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/google/android/material/picker/NumericTextView;

.field private final mOnValueSelectedListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/widget/LinearLayout;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

.field private mRadialTimeViewAlpha:F

.field private mRadialTimeViewScale:F

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    .line 67
    sput-object v0, Lcom/google/android/material/picker/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 97
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsEnabled:Z

    .line 937
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$4;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    .line 969
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$5;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    .line 987
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$6;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    .line 1023
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$7;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1030
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$8;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$8;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1037
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$9;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$9;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1059
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$10;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$10;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 125
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 129
    iget-object v3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 131
    sget v4, Lcom/google/android/material/R$string;->select_hours:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 132
    sget v4, Lcom/google/android/material/R$string;->select_minutes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 134
    sget v3, Lcom/google/android/material/R$styleable;->TimePicker_internalLayout:I

    sget v4, Lcom/google/android/material/R$layout;->op_time_picker_material:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 136
    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 138
    sget v3, Lcom/google/android/material/R$id;->time_header:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 139
    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    sget v3, Lcom/google/android/material/R$id;->hours:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/picker/NumericTextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    .line 142
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    invoke-virtual {v3, v4}, Lcom/google/android/material/picker/NumericTextView;->setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;)V

    .line 145
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;

    sget v6, Lcom/google/android/material/R$string;->select_hours:I

    invoke-direct {v4, p2, v6}, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 147
    sget v3, Lcom/google/android/material/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 148
    sget v3, Lcom/google/android/material/R$id;->separator_shape:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    sget v3, Lcom/google/android/material/R$id;->minutes:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/picker/NumericTextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    .line 150
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    invoke-virtual {v3, v4}, Lcom/google/android/material/picker/NumericTextView;->setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;)V

    .line 153
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;

    sget v6, Lcom/google/android/material/R$string;->select_minutes:I

    invoke-direct {v4, p2, v6}, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 155
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v2, v4}, Lcom/google/android/material/picker/NumericTextView;->setRange(II)V

    .line 156
    sget v3, Lcom/google/android/material/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    .line 157
    sget v3, Lcom/google/android/material/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 159
    sget v3, Lcom/google/android/material/R$id;->ampm_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 160
    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v4, v5}, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    invoke-static {p2}, Lcom/google/android/material/picker/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v6, Lcom/google/android/material/R$id;->am_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 164
    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/google/android/material/picker/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/google/android/material/picker/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 168
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v6, Lcom/google/android/material/R$id;->pm_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 169
    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 179
    sget v3, Lcom/google/android/material/R$styleable;->TimePicker_android_headerTimeTextAppearance:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v4, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/google/android/material/picker/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 186
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    :cond_0
    sget v3, Lcom/google/android/material/R$styleable;->TimePicker_headerTextColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 193
    sget v4, Lcom/google/android/material/R$id;->input_header:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 196
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 197
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 199
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 200
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/material/R$integer;->op_control_time_325:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    const/4 p2, 0x0

    .line 214
    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 215
    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 217
    sget p2, Lcom/google/android/material/R$id;->radial_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/RadialTimePickerView;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    .line 218
    invoke-virtual {p2, p3, p4, p5}, Lcom/google/android/material/picker/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 219
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setOnValueSelectedListener(Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;)V

    .line 221
    sget p2, Lcom/google/android/material/R$id;->input_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/TextInputTimePickerView;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    .line 222
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/TextInputTimePickerView;->setListener(Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;)V

    .line 224
    sget p2, Lcom/google/android/material/R$id;->toggle_mode:I

    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 226
    new-instance p2, Lcom/google/android/material/picker/TimePickerClockDelegate$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$1;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 239
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHourFormat()V

    .line 242
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    .line 243
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 244
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 245
    iget-boolean p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->initialize(IIZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/material/picker/TimePickerClockDelegate;I)I
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/picker/TimePickerClockDelegate;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/RadialTimePickerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/TimePickerClockDelegate;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/picker/TimePickerClockDelegate;IIZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method private animationInInputTimeField()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 285
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 290
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 291
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 292
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 293
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mInputBlockPositionY:I

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderPositionY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 294
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$2;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animationOutInputTimeField()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 330
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 332
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->showLabels(Z)V

    .line 333
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v1

    .line 338
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 339
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$3;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 369
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 391
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 0

    .line 763
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p0

    return p0
.end method

.method private getLocalizedHour(I)I
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    .line 808
    rem-int/lit8 p1, p1, 0xc

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 813
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    :goto_0
    move p1, p0

    :cond_2
    return p1
.end method

.method private initialize(IIZI)V
    .locals 0

    .line 507
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 508
    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    .line 509
    iput-boolean p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    .line 510
    invoke-direct {p0, p4}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5

    .line 866
    array-length v0, p1

    if-lez v0, :cond_2

    .line 868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 869
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 871
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 438
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    .line 438
    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 771
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 775
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1

    .line 917
    invoke-static {}, Lcom/oneplus/common/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 920
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 2

    .line 925
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 927
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setAmOrPm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 929
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 930
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz p1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 1

    .line 552
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_1

    .line 553
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 557
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 561
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    .line 897
    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 901
    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 905
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 906
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    if-ne p1, v0, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setActivated(Z)V

    if-nez p1, :cond_4

    .line 908
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 909
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    goto :goto_2

    .line 911
    :cond_4
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 912
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    :goto_2
    return-void
.end method

.method private setHourInternal(IIZ)V
    .locals 2

    .line 577
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    return-void

    .line 581
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 582
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 583
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderAmPm()V

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    .line 586
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHour(I)V

    .line 587
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/16 v1, 0xc

    if-ge p1, v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setAmOrPm(I)Z

    :cond_2
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    .line 590
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 593
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 594
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private setInputAmPmAtStart(Z)V
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setAmPmAtStart(Z)V

    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 1

    .line 623
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    .line 627
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    const/4 v0, 0x1

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    if-eq p2, v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    .line 634
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 637
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 638
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 6

    .line 249
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderPositionY:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 254
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 255
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    sget v3, Lcom/google/android/material/R$id;->hours:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 256
    aget v3, v0, v1

    iput v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderPositionY:I

    .line 257
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    .line 258
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$id;->input_hour:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v2

    .line 259
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderOffset:I

    if-nez v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderOffset:I

    .line 263
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 264
    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mInputBlockPositionY:I

    .line 266
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    if-eqz v0, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->animationInInputTimeField()V

    .line 269
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/google/android/material/R$drawable;->op_btn_clock_material:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    .line 272
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->animationOutInputTimeField()V

    .line 273
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v2, Lcom/google/android/material/R$drawable;->op_btn_keyboard_key_material:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 274
    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    :goto_0
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 881
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 884
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 885
    iput-boolean p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 1

    .line 780
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 785
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 786
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 787
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-ne p1, v1, :cond_1

    move v0, v1

    .line 790
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 791
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 792
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 2

    .line 535
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 541
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    .line 542
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setInputAmPmAtStart(Z)V

    .line 543
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    :goto_1
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 1

    .line 820
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p1

    .line 821
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    .line 824
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    .line 832
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [C

    .line 849
    fill-array-data v1, :array_0

    .line 850
    invoke-static {v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, ":"

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 862
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 9

    .line 402
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x48

    const/16 v5, 0x4b

    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    .line 409
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v6

    if-ge v3, v1, :cond_3

    .line 412
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    move v7, v0

    .line 419
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_6

    :cond_5
    move v2, v6

    .line 420
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/lit8 v0, v2, 0x1

    .line 424
    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    goto :goto_4

    :cond_7
    const/16 v1, 0xb

    :goto_4
    add-int/2addr v1, v0

    .line 425
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/picker/NumericTextView;->setRange(II)V

    .line 426
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 429
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 430
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/google/android/material/picker/TimePickerCompat24;->setHourFormat(Lcom/google/android/material/picker/TextInputTimePickerView;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 531
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    .line 525
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/picker/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    return-void
.end method

.method private updateUI(I)V
    .locals 2

    .line 514
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 515
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 516
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 517
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 518
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 519
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 521
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAmView()Landroid/view/View;
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHour()I
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 603
    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    return v0

    .line 607
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getAmOrPm()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 608
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 610
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public is24Hour()Z
    .locals 0

    .line 675
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 690
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsEnabled:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 707
    instance-of v0, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 708
    check-cast p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 709
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->initialize(IIZI)V

    .line 710
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    .line 701
    new-instance v6, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 702
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 681
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 683
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 685
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 573
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setIs24Hour(Z)V

    .line 659
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 660
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    .line 661
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 663
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHourFormat()V

    .line 664
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateUI(I)V

    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method public validateInput()Z
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->validateInput()Z

    move-result p0

    return p0
.end method
