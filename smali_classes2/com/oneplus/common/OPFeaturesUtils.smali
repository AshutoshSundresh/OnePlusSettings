.class public Lcom/oneplus/common/OPFeaturesUtils;
.super Ljava/lang/Object;
.source "OPFeaturesUtils.java"


# static fields
.field private static sIsSupport:Ljava/lang/reflect/Method;

.field private static sOPFeatures:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->loadFeatures()V

    return-void
.end method

.method public static isSupportXVibrate()Z
    .locals 6

    const/4 v0, 0x0

    .line 26
    :try_start_0
    sget-object v1, Lcom/oneplus/common/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 27
    :cond_0
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->loadFeatures()V

    .line 29
    :cond_1
    sget-object v1, Lcom/oneplus/common/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v2, "OP_FEATURE_X_LINEAR_VIBRATION_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 30
    sget-object v2, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    sget-object v2, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    aput-object v3, v4, v0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static isSupportZVibrate()Z
    .locals 6

    const/4 v0, 0x0

    .line 41
    :try_start_0
    sget-object v1, Lcom/oneplus/common/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 42
    :cond_0
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->loadFeatures()V

    .line 44
    :cond_1
    sget-object v1, Lcom/oneplus/common/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v2, "OP_FEATURE_Z_VIBRATION_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    sget-object v2, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    aput-object v3, v4, v0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private static loadFeatures()V
    .locals 5

    :try_start_0
    const-string v0, "android.util.OpFeatures"

    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oneplus/common/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v1, "isSupport"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 18
    const-class v4, [I

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/common/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
