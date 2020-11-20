.class Lcom/android/settings/wfd/WifiDisplaySettings$15;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1302(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    .line 715
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method
