.class Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "OPBluetoothDiscoverablePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x5b36f014

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 110
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_4

    const/16 p2, 0xc

    if-eq p1, p2, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    iget-object p1, p1, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-static {p0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->access$000(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 124
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method
