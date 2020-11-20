.class public Lcom/google/android/material/picker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/google/android/material/picker/NumberPicker$CustomEditText;,
        Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;,
        Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;,
        Lcom/google/android/material/picker/NumberPicker$InputTextFilter;,
        Lcom/google/android/material/picker/NumberPicker$Formatter;,
        Lcom/google/android/material/picker/NumberPicker$OnScrollListener;,
        Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;,
        Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final sTwoDigitFormatter:Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;

.field private mPaintColor:I

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectMiddleCount:I

.field private mSelectedValueColor:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionDividerWidth:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    sget v0, Lcom/google/android/material/R$layout;->op_number_picker:I

    sput v0, Lcom/google/android/material/picker/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 195
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/NumberPicker;->sTwoDigitFormatter:Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    .line 2090
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/picker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 583
    sget v0, Lcom/google/android/material/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 596
    sget v0, Lcom/google/android/material/picker/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v2, 0x1

    .line 154
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v3, 0x12c

    .line 297
    iput-wide v3, p0, Lcom/google/android/material/picker/NumberPicker;->mLongPressUpdateInterval:J

    .line 302
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 307
    iput-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    const/high16 v3, -0x80000000

    .line 327
    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    .line 436
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    const/4 v3, -0x1

    .line 487
    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 498
    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    .line 598
    sget-object v4, Lcom/google/android/material/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 600
    sget p3, Lcom/google/android/material/R$styleable;->NumberPicker_internalLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 603
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    .line 605
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_hideWheelUntilFocused:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHideWheelUntilFocused:Z

    .line 608
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_opsolidColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSolidColor:I

    .line 610
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 614
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 615
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 617
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 618
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 621
    :cond_2
    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x40000000    # 2.0f

    .line 625
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 623
    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 626
    sget v4, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    .line 629
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDividerWidth:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    const/high16 v0, 0x42400000    # 48.0f

    .line 634
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 632
    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 635
    sget v4, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividersDistance:I

    .line 638
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMinHeight:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinHeight:I

    .line 641
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxHeight:I

    .line 643
    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mMinHeight:I

    if-eq v4, v3, :cond_4

    if-eq v0, v3, :cond_4

    if-gt v4, v0, :cond_3

    goto :goto_1

    .line 645
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 648
    :cond_4
    :goto_1
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    .line 651
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    .line 653
    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    if-eq v4, v3, :cond_6

    if-eq v0, v3, :cond_6

    if-gt v4, v0, :cond_5

    goto :goto_2

    .line 655
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 658
    :cond_6
    :goto_2
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    if-ne v0, v3, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mComputeMaxWidth:Z

    .line 660
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_selectionOtherNumberColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 663
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 665
    new-instance p2, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    .line 672
    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, v2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 674
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 676
    invoke-virtual {p2, p3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 678
    new-instance p2, Lcom/google/android/material/picker/NumberPicker$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/NumberPicker$1;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    .line 691
    new-instance p3, Lcom/google/android/material/picker/NumberPicker$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/NumberPicker$2;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    .line 706
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v5, 0x0

    if-nez v4, :cond_8

    .line 707
    sget v4, Lcom/google/android/material/R$id;->increment:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 708
    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 711
    :cond_8
    iput-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 715
    :goto_4
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_9

    .line 716
    sget v4, Lcom/google/android/material/R$id;->decrement:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 717
    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 720
    :cond_9
    iput-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 724
    :goto_5
    sget p2, Lcom/google/android/material/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 725
    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 726
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/NumberPicker$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/NumberPicker$3;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 737
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array p3, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    aput-object v4, p3, v1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 741
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 742
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 745
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mTouchSlop:I

    .line 747
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mMinimumFlingVelocity:I

    .line 748
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaximumFlingVelocity:I

    .line 750
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    .line 753
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectedValueColor:I

    .line 754
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPaintColor:I

    .line 755
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 756
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 757
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 758
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 759
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 763
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v5, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 764
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 766
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 769
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 770
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/google/android/material/picker/NumberPicker;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/google/android/material/picker/NumberPicker;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/picker/NumberPicker;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/NumberPicker;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/material/picker/NumberPicker;I)I
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/material/picker/NumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/NumberPicker;ZJ)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 98
    sget-object v0, Lcom/google/android/material/picker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/NumberPicker;)Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/picker/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1770
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1771
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1775
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1777
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1779
    :cond_1
    iget-object v7, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1781
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1784
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1786
    :cond_3
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1890
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1891
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1893
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1894
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1895
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1897
    aput v0, p1, v1

    .line 1898
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1906
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1907
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1911
    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1914
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 1916
    aget-object p0, v2, p0

    goto :goto_1

    .line 1918
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 1921
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2191
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2193
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    .line 2194
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 2197
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2198
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1846
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1849
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1851
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1854
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 1925
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 2837
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2047
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2049
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2054
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2056
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2057
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2058
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2067
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 2073
    :catch_0
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    return p0
.end method

.method public static final getTwoDigitFormatter()Lcom/google/android/material/picker/NumberPicker$Formatter;
    .locals 1

    .line 201
    sget-object v0, Lcom/google/android/material/picker/NumberPicker;->sTwoDigitFormatter:Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 1861
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1862
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 1863
    :cond_0
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    .line 1864
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1294
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1295
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1298
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1299
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1874
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1875
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1877
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1878
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1879
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    .line 1881
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1882
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1809
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 1810
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1792
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1793
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    .line 1794
    array-length v1, v0

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1795
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1796
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1797
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1798
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    .line 1801
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1802
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    .line 1804
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1805
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1722
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1723
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    .line 1724
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1725
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1726
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1727
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1728
    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1730
    :cond_0
    aput v3, v0, v2

    .line 1731
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1683
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1684
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1693
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1691
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1689
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 840
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 841
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 842
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 843
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 845
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 853
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1969
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    .line 1971
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1973
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1976
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mOnValueChangeListener:Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_1

    .line 1977
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/google/android/material/picker/NumberPicker;II)V

    :cond_1
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1833
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1836
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    .line 1837
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mOnScrollListener:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1838
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/picker/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/google/android/material/picker/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1818
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1819
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1821
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1823
    :cond_1
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1824
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2010
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2011
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2013
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2015
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1988
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1990
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1992
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1993
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2

    .line 2081
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2082
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    .line 2084
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;->post(II)V

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2032
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2035
    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2037
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2040
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2022
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2023
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1710
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1711
    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1742
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1746
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1747
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1749
    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1750
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1752
    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1753
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1754
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1756
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/NumberPicker;->notifyChange(II)V

    .line 1758
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1759
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1279
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1280
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 1282
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1285
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1286
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1308
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1315
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/google/android/material/picker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1321
    :cond_2
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1324
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_3

    .line 1328
    :cond_4
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1330
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1336
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1337
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1338
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1339
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1341
    :cond_7
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    .line 1343
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1954
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1956
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1957
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1389
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1390
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1929
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1930
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 1935
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 1936
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1099
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1100
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1102
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1106
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1107
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1108
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1109
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1111
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    .line 1112
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    .line 1113
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1114
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1116
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 1176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 1166
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1171
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1049
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1050
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1052
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_6

    .line 1053
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1056
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 1058
    :cond_1
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 1063
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 1088
    :cond_3
    invoke-virtual {v1, v0, v4}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1090
    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1068
    :cond_4
    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1070
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1071
    invoke-virtual {v1, v0, v6, v5}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1075
    :cond_5
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    .line 1077
    invoke-virtual {v1, p1, v4}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1080
    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1082
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1083
    invoke-virtual {v1, v0, v6, v5}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1000
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1008
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 1025
    :cond_3
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    .line 1026
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1013
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-ne v0, v2, :cond_5

    .line 1014
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    .line 1032
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1015
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1016
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1017
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 1018
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    if-ne v0, v2, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1019
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 995
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 1044
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1558
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1560
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1563
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1663
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1664
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1667
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1669
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 1

    .line 1537
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1496
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1459
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1422
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    return p0
.end method

.method public getSolidColor()I
    .locals 0

    .line 1181
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSolidColor:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1413
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1355
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 1570
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1572
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 1573
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1552
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1553
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1580
    sget-object v0, Landroid/widget/LinearLayout;->PRESSED_STATE_SET:[I

    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    .line 1581
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1584
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1585
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1586
    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 1589
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget v7, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-nez v7, :cond_3

    .line 1591
    iget-boolean v7, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v7, :cond_2

    .line 1592
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1593
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1594
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1596
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v6, :cond_3

    .line 1597
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1598
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    .line 1599
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v8

    .line 1598
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1600
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1605
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    move v6, v5

    .line 1606
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_8

    .line 1607
    aget v7, v0, v6

    .line 1608
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1614
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    if-ne v6, v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    if-ne v6, v8, :cond_7

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1615
    invoke-virtual {v8}, Landroid/widget/EditText;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1616
    :cond_5
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    if-ne v6, v8, :cond_6

    .line 1617
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectedValueColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1618
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 1620
    :cond_6
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/material/picker/NumberPicker;->mPaintColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1621
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1623
    :goto_2
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1625
    :cond_7
    iget v7, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_b

    .line 1629
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1631
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    .line 1632
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1633
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v4, v1, v3

    add-int/2addr v1, v3

    .line 1639
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v3, v0

    if-nez v2, :cond_9

    .line 1641
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    invoke-virtual {v2, v5, v0, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 1643
    :cond_9
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1646
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1649
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1650
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    sub-int v2, v0, v2

    .line 1651
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    if-nez v3, :cond_a

    .line 1652
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1654
    :cond_a
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1656
    :goto_4
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 861
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 864
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 867
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 868
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventTime:J

    .line 871
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mIgnoreMoveEvents:Z

    .line 872
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    .line 874
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 875
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 876
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 879
    :cond_2
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 880
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 881
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 886
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 887
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 888
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 889
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 890
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 891
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 892
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 893
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 894
    :cond_5
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 895
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->hideSoftInput()V

    .line 897
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 896
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/picker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 898
    :cond_6
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 899
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->hideSoftInput()V

    .line 901
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 900
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/material/picker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 903
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    .line 904
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 787
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 790
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 791
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 794
    iget-object p4, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 795
    iget-object p5, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 796
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 797
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 800
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 804
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheel()V

    .line 805
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeFadingEdges()V

    .line 806
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 808
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 815
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 816
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 820
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 821
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/picker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 822
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 824
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/picker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 826
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/material/picker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 828
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 914
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 918
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 924
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 927
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 928
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 929
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 930
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 931
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 932
    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 935
    :cond_4
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 936
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    .line 937
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 939
    :cond_5
    :goto_0
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 943
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeBeginSoftInputCommand()V

    .line 944
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 945
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->cancel()V

    .line 946
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 947
    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 948
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 949
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 950
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->fling(I)V

    .line 951
    invoke-direct {p0, v2}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 953
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 954
    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 955
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 956
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 957
    iget-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 958
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    .line 959
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->performClick()Z

    goto :goto_1

    .line 961
    :cond_8
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 964
    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    .line 965
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 968
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    .line 969
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 974
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 976
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    .line 978
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 979
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1257
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0

    .line 1258
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1259
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->showSoftInput()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1266
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1267
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result p0

    return p0

    .line 1268
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->showSoftInput()V

    .line 1270
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mIgnoreMoveEvents:Z

    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1134
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    .line 1135
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-gt v0, v1, :cond_0

    .line 1137
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1140
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-lt v0, v1, :cond_1

    .line 1142
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1145
    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1146
    :cond_2
    :goto_0
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_3

    .line 1147
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1148
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1149
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    .line 1150
    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1151
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1154
    :cond_3
    :goto_1
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 1155
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1156
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1157
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    .line 1158
    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1159
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1512
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1515
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1518
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1520
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 1521
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1522
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .line 780
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    .line 781
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1123
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1126
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1129
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/google/android/material/picker/NumberPicker$Formatter;)V
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1217
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

    .line 1218
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1219
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1473
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1479
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    .line 1480
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1481
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1483
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateWrapSelectorWheel()V

    .line 1484
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1485
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 1486
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->tryComputeMaxWidth()V

    .line 1487
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1477
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1436
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1442
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    .line 1443
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1444
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1446
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateWrapSelectorWheel()V

    .line 1447
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1448
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 1449
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->tryComputeMaxWidth()V

    .line 1450
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1440
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1404
    iput-wide p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/material/picker/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mOnScrollListener:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mOnValueChangeListener:Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setSelectNumberCount(I)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1251
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1376
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1377
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
