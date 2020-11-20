.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field public suggestionLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return p0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 9

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    new-instance v8, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v8}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    .line 233
    iput-object p2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 234
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 235
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const-string v2, "plugged"

    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    .line 237
    invoke-virtual {p3}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    .line 239
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 240
    iget-boolean v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v2, :cond_1

    .line 241
    invoke-static {p0, p6, p3, v8}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, v8

    .line 243
    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V

    :goto_0
    const-string p0, "BatteryInfo"

    const-string p1, "time for getBatteryInfo"

    .line 245
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v8
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Z)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 18

    move-object/from16 v0, p0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 174
    new-instance v5, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 176
    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v5

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v5

    :goto_0
    const-string v6, "BatteryInfo"

    const-string v7, "time for getStats"

    .line 181
    invoke-static {v6, v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 185
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v7

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v8

    .line 189
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const/4 v10, -0x1

    const-string v11, "plugged"

    .line 193
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    .line 196
    invoke-interface {v7, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 197
    invoke-interface {v7, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 199
    invoke-static {v0, v7}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    const-string v4, "time for enhanced BatteryInfo"

    .line 201
    invoke-static {v6, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v7

    move-wide v4, v8

    move/from16 v6, p2

    .line 202
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v4, :cond_3

    .line 207
    invoke-virtual {v5, v8, v9}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    goto :goto_2

    :cond_3
    const-wide/16 v10, 0x0

    .line 208
    :goto_2
    new-instance v4, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 209
    invoke-static {v10, v11}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v13

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    const-string v7, "time for regular BatteryInfo"

    .line 212
    invoke-static {v6, v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-wide v4, v8

    move/from16 v6, p2

    .line 213
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 1

    .line 154
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 166
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method public static getBatteryInfoOld(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 7

    .line 220
    new-instance v6, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 221
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-wide v4, p3

    move v6, p5

    .line 224
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getChargTimeToFull(Landroid/content/Intent;Landroid/os/BatteryStats;J)J
    .locals 4

    .line 282
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isProductSwarpChargSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings BatteryInfo TimeToFull fastcharge_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fastcharge_status"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BatteryInfo"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "estimate_time_to_full"

    const-wide/16 p2, 0x0

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings BatteryInfo TimeToFull "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p2, p0, p2

    if-lez p2, :cond_0

    const-wide/16 p2, 0x3e8

    mul-long/2addr p0, p2

    mul-long/2addr p0, p2

    :cond_0
    return-wide p0

    .line 293
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p0

    return-wide p0

    .line 296
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_8

    .line 349
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const/4 v8, 0x1

    move-wide v10, v6

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    move/from16 v19, v8

    const/4 v9, 0x0

    const/16 v18, 0x0

    .line 350
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v22

    if-eqz v22, :cond_7

    add-int/lit8 v18, v18, 0x1

    move/from16 v23, v9

    if-eqz v19, :cond_0

    .line 354
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v8

    const/16 v19, 0x0

    .line 356
    :cond_0
    iget-byte v8, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v8, v4, :cond_1

    if-ne v8, v3, :cond_5

    .line 366
    :cond_1
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v16, 0x39ef8b000L

    add-long v14, v14, v16

    cmp-long v8, v8, v14

    if-gtz v8, :cond_2

    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v14, 0x493e0

    add-long v14, v20, v14

    cmp-long v8, v8, v14

    if-gez v8, :cond_3

    :cond_2
    move-wide v10, v6

    .line 370
    :cond_3
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 371
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v16, v10, v6

    if-nez v16, :cond_4

    sub-long v10, v8, v20

    sub-long v10, v14, v10

    :cond_4
    move-wide/from16 v16, v8

    .line 376
    :cond_5
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 378
    iget-wide v12, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v9, v18

    goto :goto_1

    :cond_6
    move/from16 v9, v23

    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    move/from16 v23, v9

    goto :goto_2

    :cond_8
    move-wide v10, v6

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    const/4 v9, 0x0

    .line 382
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long/2addr v14, v12

    sub-long v14, v14, v16

    const/4 v2, 0x0

    .line 388
    :goto_3
    array-length v8, v1

    if-ge v2, v8, :cond_9

    .line 389
    aget-object v8, v1, v2

    invoke-interface {v8, v10, v11, v14, v15}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    cmp-long v2, v14, v10

    if-lez v2, :cond_12

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 392
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-wide v12, v6

    const/4 v8, 0x0

    .line 393
    :goto_4
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v14

    if-eqz v14, :cond_12

    if-ge v8, v9, :cond_12

    .line 394
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 395
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v16, v14, v16

    add-long v12, v12, v16

    sub-long v16, v12, v10

    cmp-long v18, v16, v6

    if-gez v18, :cond_a

    move-wide v5, v6

    goto :goto_5

    :cond_a
    move-wide/from16 v5, v16

    :goto_5
    const/4 v7, 0x0

    .line 401
    :goto_6
    array-length v3, v1

    if-ge v7, v3, :cond_b

    .line 402
    aget-object v3, v1, v7

    invoke-interface {v3, v5, v6, v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    move-wide/from16 v16, v14

    const/4 v5, 0x7

    goto :goto_b

    .line 406
    :cond_c
    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v3, v4, :cond_e

    if-ne v3, v5, :cond_d

    goto :goto_7

    :cond_d
    move-wide v6, v12

    goto :goto_9

    .line 408
    :cond_e
    :goto_7
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v3, v6, v10

    if-ltz v3, :cond_f

    goto :goto_8

    .line 411
    :cond_f
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v6, v6, v20

    add-long/2addr v6, v10

    .line 413
    :goto_8
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v14

    .line 416
    :goto_9
    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v14, 0x6

    if-eq v3, v14, :cond_11

    if-ne v3, v4, :cond_10

    sub-long/2addr v12, v6

    .line 418
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x36ee80

    cmp-long v3, v12, v14

    if-lez v3, :cond_11

    :cond_10
    const/4 v3, 0x0

    .line 419
    :goto_a
    array-length v12, v1

    if-ge v3, v12, :cond_11

    .line 420
    aget-object v12, v1, v3

    invoke-interface {v12}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    move-wide v12, v6

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move v3, v5

    const-wide/16 v6, 0x0

    goto :goto_4

    .line 428
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/4 v5, 0x0

    .line 430
    :goto_c
    array-length v0, v1

    if-ge v5, v0, :cond_13

    .line 431
    aget-object v0, v1, v5

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    return-void
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 7

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/fuelgauge/BatteryInfo;->getChargTimeToFull(Landroid/content/Intent;Landroid/os/BatteryStats;J)J

    move-result-wide p2

    .line 254
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings BatteryInfo updateBatteryInfoCharging chargeTime:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "BatteryInfo"

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "status"

    const/4 v2, 0x1

    .line 256
    invoke-virtual {p1, p4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    const/4 v3, 0x0

    .line 258
    iput-boolean v3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const/4 v4, 0x0

    .line 259
    iput-object v4, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    const/4 v6, 0x2

    if-lez v5, :cond_0

    const/4 v5, 0x5

    if-eq p4, v5, :cond_0

    .line 261
    iput-wide p2, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 263
    invoke-static {p2, p3}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    long-to-double p1, p1

    .line 262
    invoke-static {p0, p1, p2, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 264
    sget p2, Lcom/android/settingslib/R$string;->power_charging_duration:I

    .line 265
    sget p3, Lcom/android/settingslib/R$string;->power_remaining_charging_duration_only:I

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    new-array p3, v6, [Ljava/lang/Object;

    .line 267
    iget-object p4, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p4, p3, v3

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Settings BatteryInfo updateBatteryInfoCharging timeString:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Settings BatteryInfo updateBatteryInfoCharging remainingLabel:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Settings BatteryInfo updateBatteryInfoCharging chargeLabel:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    .line 273
    iput-object v4, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 274
    iget p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    iget-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->power_charging:I

    new-array p2, v6, [Ljava/lang/Object;

    iget-object p3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p3, p2, v3

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    .line 275
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 8

    .line 303
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 305
    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 308
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    .line 310
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    .line 306
    :goto_0
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 314
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    iget-object v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 316
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    .line 312
    :goto_1
    invoke-static {p0, v2, v3, v4, v6}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 319
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    .line 318
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryTipStringFormatted(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    goto :goto_2

    .line 321
    :cond_2
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 322
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    .line 323
    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_2
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 8

    .line 66
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V

    .line 126
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    const/4 v4, 0x0

    move v5, v4

    .line 127
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 128
    aget-object v6, p2, v5

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    :cond_0
    array-length p2, p2

    aput-object v1, v2, p2

    .line 131
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static {p2, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 132
    sget p2, Lcom/android/settingslib/R$string;->charge_length_format:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    .line 133
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 132
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 135
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    .line 136
    sget p0, Lcom/android/settingslib/R$string;->remaining_length_format:I

    new-array v5, v3, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    .line 137
    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 136
    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p2, v0, v4

    aput-object p0, v0, v3

    .line 139
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method
