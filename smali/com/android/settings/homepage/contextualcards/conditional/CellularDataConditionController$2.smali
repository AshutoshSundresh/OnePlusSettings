.class Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;
.super Landroid/telephony/PhoneStateListener;
.source "CellularDataConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$500(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method
