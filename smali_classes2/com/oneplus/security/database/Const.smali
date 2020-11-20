.class public Lcom/oneplus/security/database/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static URI_NETWORK_RESTRICT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.oneplus.security.database.SafeProvider"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/security/database/Const;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tm_network_control"

    .line 12
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    sget-object v0, Lcom/oneplus/security/database/Const;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "intercept_logs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    sget-object v0, Lcom/oneplus/security/database/Const;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "network_restrict"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/security/database/Const;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    return-void
.end method
