.class final Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;
.super Ljava/lang/Object;
.source "ToggleFeaturePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityUserShortcutType"
.end annotation


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 454
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    sget-object v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 467
    sget-object p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 468
    sget-object p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mComponentName:Ljava/lang/String;

    .line 469
    sget-object p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mType:I

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mComponentName:Ljava/lang/String;

    .line 462
    iput p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mType:I

    return-void
.end method


# virtual methods
.method flattenToString()Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 492
    iget p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mType:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 493
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getType()I
    .locals 0

    .line 482
    iget p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->mType:I

    return p0
.end method
