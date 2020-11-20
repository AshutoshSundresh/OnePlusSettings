.class public Lcom/android/settings/accessibility/AnimatedImagePreference;
.super Landroidx/preference/Preference;
.source "AnimatedImagePreference.java"


# instance fields
.field private mImageUri:Landroid/net/Uri;

.field private mMaxHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    .line 41
    sget p1, Lcom/android/settings/R$layout;->preference_animated_image:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 48
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->animated_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 56
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 62
    :cond_1
    iget p0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    const/4 v0, -0x1

    if-le p0, v0, :cond_2

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_2
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    if-eq p1, v0, :cond_0

    .line 86
    iput p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
