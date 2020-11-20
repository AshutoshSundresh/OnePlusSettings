.class Lcom/google/android/material/picker/DatePickerCalendarDelegate;
.super Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderLunarMonthDay:Landroid/widget/TextView;

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Lcom/google/android/material/picker/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    .line 53
    sput-object v0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 598
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 599
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 600
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 188
    new-instance p2, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;

    .line 210
    new-instance p2, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

    .line 239
    new-instance p2, Lcom/google/android/material/picker/DatePickerCalendarDelegate$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$3;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 88
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 89
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 90
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 91
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 92
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 94
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/16 v0, 0x76c

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Ljava/util/Calendar;->set(III)V

    .line 95
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v0, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 97
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 98
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->DatePicker:[I

    invoke-virtual {v0, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 100
    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string p5, "layout_inflater"

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/LayoutInflater;

    .line 102
    sget p5, Lcom/google/android/material/R$styleable;->DatePicker_internalLayout:I

    sget v0, Lcom/google/android/material/R$layout;->op_date_picker_material:I

    invoke-virtual {p3, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    .line 106
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p4, p5, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 108
    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget p5, Lcom/google/android/material/R$id;->date_picker_header:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 112
    sget p5, Lcom/google/android/material/R$id;->date_picker_header_year:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget p5, Lcom/google/android/material/R$id;->date_picker_header_date:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget p5, Lcom/google/android/material/R$id;->date_picker_header_lunar:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    .line 124
    sget p4, Lcom/google/android/material/R$styleable;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {p3, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_0

    .line 127
    iget-object p5, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {p5, v0, v2, p1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 129
    invoke-virtual {p4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 130
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    :cond_0
    sget p4, Lcom/google/android/material/R$styleable;->DatePicker_headerTextColor:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 138
    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget p4, Lcom/google/android/material/R$id;->animator:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ViewAnimator;

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 153
    sget p4, Lcom/google/android/material/R$id;->date_picker_day_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/DayPickerView;

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    .line 154
    iget p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/DayPickerView;->setFirstDayOfWeek(I)V

    .line 155
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->setMinDate(J)V

    .line 156
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->setMaxDate(J)V

    .line 157
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->setDate(J)V

    .line 158
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/DayPickerView;->setOnDaySelectedListener(Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;)V

    .line 161
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget p4, Lcom/google/android/material/R$id;->date_picker_year_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/YearPickerView;

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    .line 162
    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 163
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/YearPickerView;->setYear(I)V

    .line 164
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/YearPickerView;->setOnYearSelectedListener(Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;)V

    .line 167
    sget p3, Lcom/google/android/material/R$string;->select_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 168
    sget p3, Lcom/google/android/material/R$string;->select_year:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 172
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/DatePickerCalendarDelegate;ZZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/DatePickerCalendarDelegate;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)Lcom/google/android/material/picker/YearPickerView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    return-object p0
.end method

.method public static getDaysInMonth(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 594
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 592
    :pswitch_1
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCurrentDateChanged(Z)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->updateLunarDate()V

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 379
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-eqz p2, :cond_2

    .line 381
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 382
    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 383
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-eqz v2, :cond_1

    .line 384
    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-interface {v2, v3, v0, p2, v1}, Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-eqz v2, :cond_2

    .line 387
    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-interface {v2, v3, v0, p2, v1}, Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V

    .line 391
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/material/picker/DayPickerView;->setDate(J)V

    .line 392
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {p2, v0}, Lcom/google/android/material/picker/YearPickerView;->setYear(I)V

    .line 394
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    if-eqz p1, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->changeYearLayoutParams()V

    .line 319
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 320
    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/google/android/material/picker/YearPickerView;->setYear(I)V

    .line 321
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    new-instance v3, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;

    invoke-direct {v3, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 329
    iget v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 331
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 332
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 333
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 334
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 335
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/picker/DayPickerView;->setDate(J)V

    .line 306
    iget v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_3

    .line 307
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 308
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 309
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 310
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 311
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 312
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private tryVibrate()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 605
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->isSupportZVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 607
    :try_start_0
    const-class v0, Landroid/os/VibrationEffect;

    const-string v1, "EFFECT_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 608
    const-class v1, Landroid/os/VibrationEffect;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 609
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 611
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    .line 612
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 613
    sget-object v1, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 615
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 618
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method private updateLunarDate()V
    .locals 4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "zh"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->solarToLunar(Ljava/util/Calendar;)Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;

    move-result-object v1

    const-string v2, "zh_CN"

    .line 294
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 295
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "\u519c\u5386\uff1a"

    goto :goto_0

    :cond_0
    const-string v0, "\u8fb2\u66c6\uff1a"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->getYYMMDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 298
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public changeYearLayoutParams()V
    .locals 4

    .line 346
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 348
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 491
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported by calendar-mode DatePicker"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCalendarViewShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 413
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    return v0

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMonth()I
    .locals 1

    .line 408
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 403
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 359
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 360
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 362
    invoke-direct {p0, p1, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 364
    iput-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isYearPickerIsShow()Z
    .locals 1

    .line 199
    iget p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 516
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EMMMd"

    .line 262
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 264
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "y"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 541
    instance-of v0, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 542
    check-cast p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 545
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 546
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 547
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 549
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 551
    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v0

    .line 552
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 554
    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_0

    .line 557
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/picker/DayPickerView;->setPosition(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    .line 559
    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14

    .line 521
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 522
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 523
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 528
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v12, v0

    .line 535
    new-instance v0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 536
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v13, -0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentYear()V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/YearPickerView;->setCurrentYear()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 464
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 441
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x6

    .line 442
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 451
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/DayPickerView;->setMaxDate(J)V

    .line 452
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/picker/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 419
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x6

    .line 420
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 426
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 429
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/DayPickerView;->setMinDate(J)V

    .line 430
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/picker/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    return-void
.end method

.method public updateDate(III)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 370
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 371
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 373
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method
