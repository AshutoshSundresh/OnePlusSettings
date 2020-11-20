.class public Lcom/google/android/material/listview/ListItemView;
.super Landroid/widget/LinearLayout;
.source "ListItemView.java"


# instance fields
.field private mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

.field private mCustomViewLayout:Landroid/widget/LinearLayout;

.field private mDividerView:Landroid/view/View;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mImageFrame:Landroid/widget/LinearLayout;

.field private mIsListItemSelected:Z

.field private mListSummaryView:Landroid/widget/TextView;

.field private mListTitleView:Landroid/widget/TextView;

.field private mRootLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/listview/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->control_listitem_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget-object v0, Lcom/google/android/material/R$styleable;->ListItemView:[I

    sget v1, Lcom/google/android/material/R$attr;->ListItemViewStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->initView()V

    .line 54
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_itemIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_itemIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/ListItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/ListItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/ListItemView;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initView()V
    .locals 1

    .line 63
    sget v0, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/google/android/material/R$id;->avatar_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/checkbox/SelectedAvatarView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    .line 65
    sget v0, Lcom/google/android/material/R$id;->list_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/google/android/material/R$id;->list_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/google/android/material/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mDividerView:Landroid/view/View;

    .line 68
    sget v0, Lcom/google/android/material/R$id;->list_widget_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    .line 69
    sget v0, Lcom/google/android/material/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 70
    sget v0, Lcom/google/android/material/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    return-void
.end method

.method private isSummaryEmpty()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvataIconView()Lcom/google/android/material/checkbox/SelectedAvatarView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    return-object p0
.end method

.method public getCustomView()Landroid/widget/LinearLayout;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getListItemSelected()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/google/android/material/listview/ListItemView;->mIsListItemSelected:Z

    return p0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 175
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 184
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    if-eqz v0, :cond_9

    .line 194
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 195
    invoke-virtual {v0, v3}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 198
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 206
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_a

    .line 207
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 208
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 211
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 210
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_4

    .line 213
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_screen_right2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 213
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_c

    .line 216
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 217
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 216
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 218
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 219
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_c

    .line 220
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_screen_right2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v1, v1, -0x190

    if-le v0, v1, :cond_d

    .line 225
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 226
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_bottom1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 225
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 232
    :cond_d
    :goto_4
    sget v0, Lcom/google/android/material/R$id;->text_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 236
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->isSummaryEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 238
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_list_bottom2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 240
    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_list_top4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_list_bottom4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 243
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_f
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setAvataIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_1

    .line 120
    iput-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mDividerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mDividerView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_1

    .line 107
    iput-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setListItemSelected(Z)V
    .locals 1

    .line 75
    iput-boolean p1, p0, Lcom/google/android/material/listview/ListItemView;->mIsListItemSelected:Z

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->op_control_bg_color_selected_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->op_control_bg_color_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
