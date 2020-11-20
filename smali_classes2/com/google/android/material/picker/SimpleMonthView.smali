.class Lcom/google/android/material/picker/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;,
        Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 142
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 63
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 64
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 65
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 66
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    .line 102
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    .line 108
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    const/4 p3, 0x1

    .line 111
    iput p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    .line 123
    iput p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayStart:I

    const/16 p4, 0x1f

    .line 126
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayEnd:I

    .line 133
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 134
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p2, 0x0

    .line 135
    iput-boolean p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 151
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 153
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_month_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredMonthHeight:I

    .line 154
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_of_week_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 155
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayHeight:I

    .line 156
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredCellWidth:I

    .line 157
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_selector_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 161
    new-instance p2, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/google/android/material/picker/SimpleMonthView;Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    .line 162
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 163
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 165
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 166
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 168
    iget-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 170
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateMonthYearLabel()V

    .line 171
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 173
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/SimpleMonthView;II)I
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/SimpleMonthView;I)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/SimpleMonthView;I)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/SimpleMonthView;I)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 207
    sget p2, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 209
    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 212
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 212
    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 215
    sget p2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 217
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 218
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 656
    iget-object v2, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 657
    iget v3, v0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 658
    iget v4, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 659
    iget v5, v0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 662
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 663
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v3, v7

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v7

    const/4 v9, 0x1

    :goto_0
    iget v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-gt v9, v10, :cond_a

    mul-int v10, v5, v7

    .line 666
    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 668
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 669
    iget v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int v10, v11, v10

    .line 676
    :cond_0
    invoke-direct {v0, v9}, Lcom/google/android/material/picker/SimpleMonthView;->isDayEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v13, 0x8

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 681
    :goto_1
    iget v14, v0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    if-ne v14, v9, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 682
    :goto_2
    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v9, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_5

    or-int/lit8 v13, v13, 0x20

    if-eqz v15, :cond_4

    .line 687
    iget-object v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_4
    iget-object v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_4
    int-to-float v15, v10

    int-to-float v8, v3

    .line 689
    iget v12, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v15, v8, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    if-eqz v15, :cond_6

    or-int/lit8 v13, v13, 0x10

    if-eqz v11, :cond_6

    int-to-float v8, v10

    int-to-float v11, v3

    .line 695
    iget v12, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    iget-object v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v11, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 700
    :cond_6
    :goto_5
    iget v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_8

    if-nez v14, :cond_8

    .line 703
    iget-object v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_7

    .line 705
    :cond_8
    invoke-static {v13}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v8

    .line 706
    iget-object v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    const/4 v11, 0x1

    .line 707
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 709
    :goto_7
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 711
    iget-object v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v13, v9

    invoke-virtual {v8, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    int-to-float v10, v10

    int-to-float v13, v3

    sub-float/2addr v13, v6

    invoke-virtual {v1, v8, v10, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x7

    if-ne v7, v8, :cond_9

    add-int/2addr v3, v4

    move v7, v12

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 8

    .line 629
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 630
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    .line 631
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    .line 632
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 635
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 636
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1

    mul-int v5, v3, v2

    .line 639
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    .line 641
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 642
    iget v6, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v6, v5

    .line 647
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v6, v6, v2

    int-to-float v5, v5

    int-to-float v7, v1

    sub-float/2addr v7, v4

    .line 648
    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 4

    .line 615
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 618
    iget-object v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 619
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 621
    iget-object v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .line 577
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 580
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 581
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    return-void

    .line 584
    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 585
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 588
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 550
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    if-nez v1, :cond_1

    return v0

    .line 554
    :cond_1
    div-int/2addr p1, v1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 555
    invoke-static {p1, v0, v1}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    .line 556
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    rsub-int/lit8 p0, p1, 0x7

    add-int/lit8 p1, p0, -0x1

    :cond_2
    return p1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 519
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 520
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 521
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 524
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    .line 525
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    sub-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    .line 529
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 530
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v0, p0

    .line 531
    div-int/lit8 p0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-int/2addr p0, v0

    .line 533
    invoke-static {p1, v1, p0}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private findDayOffset()I
    .locals 2

    .line 926
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    sub-int v1, v0, p0

    if-ge v0, p0, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    return v1
.end method

.method private getDayAtLocation(II)I
    .locals 3

    .line 943
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ltz p1, :cond_4

    .line 944
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 949
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    if-lt p2, v1, :cond_4

    .line 950
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedHeight:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    .line 956
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 957
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int p1, v2, p1

    :cond_2
    sub-int/2addr p2, v1

    .line 962
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    div-int/2addr p2, v1

    mul-int/lit8 p1, p1, 0x7

    .line 963
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr p1, v1

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 965
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result p2

    sub-int/2addr p1, p2

    .line 966
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private static getDaysInMonth(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 848
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 846
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

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 259
    sget v0, Lcom/google/android/material/R$string;->date_picker_month_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    sget v1, Lcom/google/android/material/R$string;->date_picker_day_of_week_typeface:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    sget v2, Lcom/google/android/material/R$string;->date_picker_day_typeface:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    sget v3, Lcom/google/android/material/R$dimen;->date_picker_month_text_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 265
    sget v4, Lcom/google/android/material/R$dimen;->date_picker_day_of_week_text_size:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 267
    sget v5, Lcom/google/android/material/R$dimen;->date_picker_day_text_size:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 270
    iget-object v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 271
    iget-object v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 272
    iget-object v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 273
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 277
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 278
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 279
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 283
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 286
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 289
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 292
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 293
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 294
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 295
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1

    .line 723
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    .line 593
    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLastDayOfWeek(I)Z
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    .line 598
    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidDayOfMonth(I)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 727
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moveOneDay(Z)Z
    .locals 2

    .line 454
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 457
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v0

    .line 458
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 462
    :cond_0
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 463
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3

    .line 1014
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    .line 1019
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1020
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1021
    iget-object v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/google/android/material/picker/SimpleMonthView;Ljava/util/Calendar;)V

    .line 1025
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 3

    .line 853
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    .line 854
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 6

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0x32

    .line 187
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 190
    iget-object v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    rem-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 6

    .line 980
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 984
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr p1, v1

    .line 987
    rem-int/lit8 v1, p1, 0x7

    .line 988
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 990
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    sub-int/2addr v3, v1

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 997
    :goto_0
    div-int/lit8 p1, p1, 0x7

    .line 998
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 999
    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v4, v5

    .line 1000
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v4

    mul-int/2addr p1, v1

    add-int/2addr p0, p1

    add-int/2addr v2, v3

    add-int/2addr v1, p0

    .line 1002
    invoke-virtual {p2, v3, p0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getCellWidth()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    return p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 562
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 563
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 565
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    return p0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    .line 605
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 607
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 608
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 609
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    .line 611
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1049
    iget-boolean p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez p1, :cond_0

    .line 1051
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p1, -0x1

    .line 1052
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 477
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x7

    .line 492
    :cond_1
    iput v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 480
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 481
    :goto_0
    iput v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 496
    :cond_4
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 497
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v0

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    if-le v1, v3, :cond_5

    add-int/lit8 v1, v1, -0x7

    .line 499
    :cond_5
    iput v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 485
    :cond_6
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    .line 486
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 503
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 506
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 386
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 393
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto/16 :goto_2

    .line 388
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 389
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto :goto_2

    .line 407
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    .line 409
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    add-int/2addr v0, v1

    .line 410
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 398
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    .line 400
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-le v0, v1, :cond_6

    sub-int/2addr v0, v1

    .line 401
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    :goto_0
    move v2, v3

    goto :goto_2

    .line 417
    :cond_0
    :pswitch_4
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 418
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/SimpleMonthView;->onDayClicked(I)Z

    return v3

    .line 424
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    .line 434
    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 436
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    .line 438
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 449
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 886
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 887
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, p3

    sub-int/2addr p5, v0

    sub-int/2addr p4, p1

    sub-int/2addr p5, p2

    .line 894
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    if-eq p4, v1, :cond_2

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedHeight:I

    if-eq p5, v1, :cond_2

    if-ltz p4, :cond_2

    if-gez p5, :cond_1

    goto :goto_0

    .line 900
    :cond_1
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    .line 901
    iput p5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedHeight:I

    .line 905
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    int-to-float p2, p5

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 907
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 908
    iget p5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 p5, p5, 0x7

    .line 909
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    .line 910
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    .line 911
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 912
    iput p5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 916
    div-int/lit8 p5, p5, 0x2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 917
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    div-int/lit8 p1, p1, 0x2

    .line 918
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDaySelectorRadius:I

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    .line 922
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 859
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 864
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 865
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 866
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1031
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1035
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1037
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 1043
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 871
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 873
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result p1

    .line 366
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->onDayClicked(I)Z

    :cond_1
    const/4 p1, -0x1

    .line 370
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 371
    iput-boolean v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    .line 352
    iput-boolean v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 353
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-eq v1, v0, :cond_3

    .line 354
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 355
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    if-gez v0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x18

    .line 327
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 328
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 305
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x28

    .line 317
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 318
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 321
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 759
    invoke-static {p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    .line 765
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 768
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 769
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 0

    .line 790
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    .line 792
    invoke-static {p2}, Lcom/google/android/material/picker/SimpleMonthView;->isValidMonth(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 793
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    .line 795
    :cond_0
    iput p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    .line 797
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    iget p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 798
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 799
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 800
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    .line 802
    invoke-static {p4}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 803
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 805
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    .line 809
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, -0x1

    .line 810
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    .line 811
    iget p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    invoke-static {p2, p4}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    const/4 p2, 0x0

    .line 812
    :cond_2
    :goto_1
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-ge p2, p4, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 814
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/picker/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 815
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    goto :goto_1

    .line 819
    :cond_3
    invoke-static {p5, p3, p4}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayStart:I

    .line 820
    iget p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, p1, p2}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayEnd:I

    .line 822
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateMonthYearLabel()V

    .line 823
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 826
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 827
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 299
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 300
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    .line 745
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    .line 748
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 749
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
