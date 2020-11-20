.class Lcom/android/settings/wfd/WifiDisplaySettings$3$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$3;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WifiDisplaySettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$3;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$3;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    return-void
.end method
