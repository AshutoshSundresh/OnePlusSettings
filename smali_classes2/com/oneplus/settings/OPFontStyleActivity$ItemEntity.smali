.class Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;
.super Ljava/lang/Object;
.source "OPFontStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFontStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemEntity"
.end annotation


# instance fields
.field content:Landroid/graphics/Typeface;

.field fontType:I

.field name:Ljava/lang/String;

.field selected:Z

.field title:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(ILandroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/lang/String;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    .line 208
    iput p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->fontType:I

    .line 209
    iput-object p2, p0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->title:Landroid/graphics/Typeface;

    .line 210
    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->content:Landroid/graphics/Typeface;

    .line 211
    iput-object p4, p0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->name:Ljava/lang/String;

    return-void
.end method
