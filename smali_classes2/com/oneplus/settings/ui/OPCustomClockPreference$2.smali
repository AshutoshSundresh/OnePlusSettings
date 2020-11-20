.class Lcom/oneplus/settings/ui/OPCustomClockPreference$2;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->saveSelectedClock()V

    .line 306
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
