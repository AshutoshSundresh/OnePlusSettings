.class Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemEntity"
.end annotation


# instance fields
.field hasInfo:Z

.field name:Ljava/lang/String;

.field resId:I

.field selected:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 467
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    .line 468
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->hasInfo:Z

    .line 454
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->name:Ljava/lang/String;

    .line 455
    iput p2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->resId:I

    .line 456
    iput p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 461
    iput-boolean p4, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->hasInfo:Z

    return-void
.end method
