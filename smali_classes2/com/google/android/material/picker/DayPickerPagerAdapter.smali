.class Lcom/google/android/material/picker/DayPickerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;,
        Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 309
    new-instance v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/DayPickerPagerAdapter$1;-><init>(Lcom/google/android/material/picker/DayPickerPagerAdapter;)V

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput p2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mLayoutResId:I

    .line 55
    iput p3, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarViewId:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const p3, 0x101042c

    const/4 v0, 0x0

    aput p3, p2, v0

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/DayPickerPagerAdapter;)Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object p0
.end method

.method private getMonthForPosition(I)I
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    rem-int/lit8 p1, p1, 0xc

    return p1
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    .line 204
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    return v1
.end method

.method private getYearForPosition(I)I
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xc

    .line 195
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 270
    check-cast p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    .line 271
    iget-object p3, p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCount:I

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 278
    check-cast p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    .line 279
    iget p0, p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->position:I

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/picker/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 211
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 213
    iget v1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/SimpleMonthView;

    .line 214
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setOnDayClickListener(Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;)V

    .line 215
    iget v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 216
    iget v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 217
    iget v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayTextAppearance(I)V

    .line 219
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 230
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 233
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v4

    .line 234
    invoke-direct {p0, p2}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v5

    .line 237
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 238
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    move v7, v2

    .line 244
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 245
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_4
    move v9, v8

    .line 251
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 252
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x1f

    :goto_2
    move v8, v2

    .line 257
    iget v6, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move-object v2, v1

    move v3, v7

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 260
    new-instance v2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Lcom/google/android/material/picker/SimpleMonthView;)V

    .line 261
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 185
    check-cast p2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    .line 186
    iget-object p0, p2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 162
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 152
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 171
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3

    .line 82
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 85
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    .line 88
    invoke-virtual {v2, p1}, Lcom/google/android/material/picker/SimpleMonthView;->setFirstDayOfWeek(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 157
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 68
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 69
    iput v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCount:I

    .line 72
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 118
    iget-object v3, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/SimpleMonthView;->setSelectedDay(I)V

    :cond_0
    if-ltz v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 128
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 129
    iget-object v0, v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->setSelectedDay(I)V

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    return-void
.end method
