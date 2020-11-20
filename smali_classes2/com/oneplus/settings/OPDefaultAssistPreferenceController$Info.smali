.class Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;
.super Ljava/lang/Object;
.source "OPDefaultAssistPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDefaultAssistPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;->component:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;->component:Landroid/content/ComponentName;

    return-void
.end method
