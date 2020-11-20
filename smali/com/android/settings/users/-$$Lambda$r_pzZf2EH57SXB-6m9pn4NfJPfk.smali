.class public final synthetic Lcom/android/settings/users/-$$Lambda$r_pzZf2EH57SXB-6m9pn4NfJPfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/-$$Lambda$r_pzZf2EH57SXB-6m9pn4NfJPfk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/-$$Lambda$r_pzZf2EH57SXB-6m9pn4NfJPfk;

    invoke-direct {v0}, Lcom/android/settings/users/-$$Lambda$r_pzZf2EH57SXB-6m9pn4NfJPfk;-><init>()V

    sput-object v0, Lcom/android/settings/users/-$$Lambda$r_pzZf2EH57SXB-6m9pn4NfJPfk;->INSTANCE:Lcom/android/settings/users/-$$Lambda$r_pzZf2EH57SXB-6m9pn4NfJPfk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    return p0
.end method
