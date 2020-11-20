.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$lGCqaYnDkJhYWSs9qTkpFiei7yE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$lGCqaYnDkJhYWSs9qTkpFiei7yE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/-$$Lambda$UserSettings$lGCqaYnDkJhYWSs9qTkpFiei7yE;

    invoke-direct {v0}, Lcom/android/settings/users/-$$Lambda$UserSettings$lGCqaYnDkJhYWSs9qTkpFiei7yE;-><init>()V

    sput-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$lGCqaYnDkJhYWSs9qTkpFiei7yE;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$lGCqaYnDkJhYWSs9qTkpFiei7yE;

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

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->lambda$getRealUsersCount$0(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method
