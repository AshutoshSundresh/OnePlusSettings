.class public Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DarkModeCustomPreferenceController.java"


# static fields
.field private static final END_TIME_KEY:Ljava/lang/String; = "dark_theme_end_time"

.field private static final START_TIME_KEY:Ljava/lang/String; = "dark_theme_start_time"

.field public static formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

.field private mFragmet:Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

.field private mPreference:Landroidx/preference/Preference;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh:mm a"

    .line 39
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->formatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    new-instance p2, Lcom/android/settings/display/darkmode/TimeFormatter;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/settings/display/darkmode/TimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    .line 50
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p3, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mFragmet:Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;Lcom/android/settings/display/darkmode/TimeFormatter;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;)V

    .line 65
    iput-object p4, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    return-void
.end method

.method private synthetic lambda$getDialog$0(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    .line 81
    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "dark_theme_start_time"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2, p1}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2, p1}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    .line 87
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mFragmet:Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->refresh()V

    :cond_1
    return-void
.end method

.method private updateDisplay()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 114
    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->updateDisplay()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getDialog()Lcom/google/android/material/picker/TimePickerDialog;
    .locals 8

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark_theme_start_time"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v0

    .line 80
    :goto_0
    new-instance v7, Lcom/google/android/material/picker/TimePickerDialog;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/display/darkmode/-$$Lambda$DarkModeCustomPreferenceController$KLPwvFP-3y4ehkWxFoUCgDK4_PM;

    invoke-direct {v3, p0}, Lcom/android/settings/display/darkmode/-$$Lambda$DarkModeCustomPreferenceController$KLPwvFP-3y4ehkWxFoUCgDK4_PM;-><init>(Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;)V

    .line 90
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/TimeFormatter;->is24HourFormat()Z

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getDialog$0$DarkModeCustomPreferenceController(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->lambda$getDialog$0(Lcom/google/android/material/picker/TimePicker;II)V

    return-void
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    .line 96
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark_theme_start_time"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v0

    .line 106
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
