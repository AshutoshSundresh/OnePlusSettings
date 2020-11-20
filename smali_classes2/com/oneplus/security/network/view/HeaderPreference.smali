.class public Lcom/oneplus/security/network/view/HeaderPreference;
.super Landroidx/preference/Preference;
.source "HeaderPreference.java"


# instance fields
.field private dataLeftTitle:Ljava/lang/String;

.field private dataUsedTitle:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataLimitLabel:Ljava/lang/String;

.field private mDataUsageLabel:Ljava/lang/String;

.field private mDataUsageLayout:Landroid/view/View;

.field private mDataUsageLeftValue:Landroid/widget/TextView;

.field private mDataUsageProgress:Landroid/widget/ProgressBar;

.field private mDataUsageTitle:Landroid/widget/TextView;

.field private mDataUsageTotal:Landroid/widget/TextView;

.field private mDataUsageUsed:Landroid/widget/TextView;

.field private mDataWarnLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/HeaderPreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/HeaderPreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/HeaderPreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getDataInvalidValueHintString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_invalid_value_hint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    .line 60
    sget p1, Lcom/android/settings/R$layout;->data_usage_sim_pref_header:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 62
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_left_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->dataLeftTitle:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->traffic_package_used:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->dataUsedTitle:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_limit_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataLimitLabel:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_used_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLabel:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_warn_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataWarnLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataUsageSection(I)Ljava/lang/String;
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/security/network/operator/AccountDayLocalCache;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    .line 135
    iget-object p0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/security/utils/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 71
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 72
    sget v0, Lcom/android/settings/R$id;->data_usage_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    .line 73
    sget v0, Lcom/android/settings/R$id;->data_usage_left_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/android/settings/R$id;->data_usage_left_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/android/settings/R$id;->data_usage_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    .line 76
    sget v0, Lcom/android/settings/R$id;->data_usage_used_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/android/settings/R$id;->data_usage_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    return-void
.end method

.method public updateData(IJJJ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentSlotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",used="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HeaderPreference"

    invoke-static {v7, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    cmp-long v6, v4, v8

    const/16 v10, 0x8

    if-nez v6, :cond_0

    .line 83
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/security/network/view/HeaderPreference;->getDataInvalidValueHintString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 87
    :cond_0
    iget-object v6, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sub-long v11, v2, v4

    const/4 v13, 0x1

    invoke-static {v6, v11, v12, v13, v13}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v6

    .line 88
    iget-object v11, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-lez v12, :cond_1

    move-wide v8, v4

    goto :goto_0

    :cond_1
    move-wide v8, v14

    :goto_0
    invoke-static {v11, v8, v9, v13, v13}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v8

    .line 89
    iget-object v9, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    cmp-long v11, v2, v14

    if-lez v11, :cond_2

    move-wide v11, v2

    goto :goto_1

    :cond_2
    move-wide v11, v14

    :goto_1
    invoke-static {v9, v11, v12, v13, v13}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v9

    const-wide/16 v11, -0x1

    cmp-long v16, v2, v11

    const-string v11, "%s%s"

    const-string v12, "%s(%s)"

    const-wide/16 v17, 0x64

    const-string v15, "%s %s%s"

    const/4 v10, 0x2

    const/4 v14, 0x0

    if-eqz v16, :cond_4

    .line 90
    iget-object v13, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-static {v13, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 91
    iget-object v7, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    new-array v13, v10, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/oneplus/security/network/view/HeaderPreference;->dataLeftTitle:Ljava/lang/String;

    aput-object v10, v13, v14

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/security/network/view/HeaderPreference;->getDataUsageSection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/Object;

    aget-object v7, v6, v14

    aput-object v7, v12, v14

    aget-object v6, v6, v10

    aput-object v6, v12, v10

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataLimitLabel:Ljava/lang/String;

    aput-object v11, v7, v14

    aget-object v11, v9, v14

    aput-object v11, v7, v10

    aget-object v9, v9, v10

    const/4 v11, 0x2

    aput-object v9, v7, v11

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLabel:Ljava/lang/String;

    aput-object v7, v6, v14

    aget-object v7, v8, v14

    aput-object v7, v6, v10

    aget-object v7, v8, v10

    aput-object v7, v6, v11

    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    mul-long v4, v4, v17

    .line 96
    div-long/2addr v4, v2

    long-to-int v1, v4

    .line 97
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->progress_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    mul-long v1, v2, v17

    .line 100
    div-long/2addr v1, v4

    long-to-int v1, v1

    .line 101
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->progress_horizontal_limit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_2
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 109
    :cond_4
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/oneplus/security/network/view/HeaderPreference;->dataUsedTitle:Ljava/lang/String;

    aput-object v9, v6, v14

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/security/network/view/HeaderPreference;->getDataUsageSection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v6, v9

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    aget-object v3, v8, v14

    aput-object v3, v2, v14

    aget-object v3, v8, v9

    aput-object v3, v2, v9

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-nez v1, :cond_5

    .line 113
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 116
    :cond_5
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    cmp-long v6, p6, v2

    if-lez v6, :cond_6

    move-wide/from16 v2, p6

    :cond_6
    const/4 v6, 0x1

    invoke-static {v1, v2, v3, v6, v14}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataWarnLabel:Ljava/lang/String;

    aput-object v8, v3, v14

    aget-object v8, v1, v14

    aput-object v8, v3, v6

    aget-object v1, v1, v6

    const/4 v6, 0x2

    aput-object v1, v3, v6

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-long v1, v4, v17

    .line 119
    div-long v1, v1, p6

    long-to-int v1, v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usedPercent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
