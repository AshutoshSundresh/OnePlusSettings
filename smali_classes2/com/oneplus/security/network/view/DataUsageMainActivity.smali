.class public Lcom/oneplus/security/network/view/DataUsageMainActivity;
.super Lcom/oneplus/security/network/view/BaseTabActivity;
.source "DataUsageMainActivity.java"

# interfaces
.implements Lcom/oneplus/security/network/simcard/SimStateListener;
.implements Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;


# instance fields
.field private isActivityShowing:Z

.field private mCurrentDataSlotId:I

.field private mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    return-void
.end method

.method private clearExistingOperatorDataModels()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    .line 291
    iput-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    .line 296
    iput-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_1
    return-void
.end method

.method private configOperatorDataModels()V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "DataUsageMainActivity"

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "no sim card is inserted in slot 1."

    .line 271
    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 275
    :goto_0
    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move v1, v2

    goto :goto_1

    :cond_1
    const-string v2, "no sim card is inserted in slot 2."

    .line 279
    invoke-static {v3, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string v0, "none effective sim card inserted, use null model"

    .line 283
    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_2
    return-void
.end method

.method private findOutCurrentUsingSimSlot()V
    .locals 5

    .line 303
    invoke-static {p0}, Lcom/oneplus/security/network/OperatorInfoUtils;->getCurrentDisplayingSlotId(Landroid/content/Context;)I

    move-result v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findOutCurrentUsingSimSlot cachedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageMainActivity"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v1, v0, :cond_2

    .line 307
    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    iput v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    if-nez v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_0

    const-string v0, "use cached sim card one."

    .line 310
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    const-string v0, "use cached sim card two."

    .line 313
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    goto :goto_0

    :cond_1
    const-string p0, "this thing should never happen since we only save effective sim id"

    .line 316
    invoke-static {v2, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 323
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current slot id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    iput v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    .line 326
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v0, "assign model one"

    .line 327
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0, v3}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    iput v3, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    .line 330
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v0, "assign model two"

    .line 331
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_4
    iput v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    .line 334
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v0, "assign nothing"

    .line 335
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_1
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v0}, Lcom/oneplus/security/network/OperatorInfoUtils;->setCurrentDisplayingSlotId(Landroid/content/Context;I)V

    return-void
.end method

.method private isSlotEffective()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    .line 151
    invoke-interface {p0, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private registerListener()V
    .locals 3

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    .line 163
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v2, "DataUsageMainActivity"

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isSlotEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Slot status change , no sim card -> sim card, need refresh"

    .line 164
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isSlotEffective()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Slot status change 2, sim card -> no sim card, need refresh"

    .line 169
    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->registerOperatorValueListeners()V

    .line 174
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    return-void
.end method

.method private registerOperatorValueListeners()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addQueryResultListener(I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addQueryResultListener(I)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_2

    .line 261
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    :cond_2
    return-void
.end method

.method private requestDataUsageUpdate(I)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDataUsageUpdate slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageMainActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p0, :cond_0

    .line 243
    invoke-interface {p0, p1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    :cond_0
    return-void
.end method

.method private unregisterOperatorValueListeners()V
    .locals 2

    const-string v0, "DataUsageMainActivity"

    const-string v1, "unregister listeners."

    .line 341
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 344
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeQueryResultListener(I)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    .line 349
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 350
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeQueryResultListener(I)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_2

    .line 355
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getFragmentList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    sget v3, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;IZI)V

    .line 205
    iget-object v3, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v3, v4}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->setSupportSdk(Z)V

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    sget v3, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;IZI)V

    .line 210
    iget-object v3, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v3, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->setSupportSdk(Z)V

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_2

    .line 214
    new-instance v1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    sget v3, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    const/4 v4, -0x1

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;IZI)V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_2
    sget v1, Lcom/android/settings/R$xml;->data_usage_wlan_prefs:I

    .line 218
    new-instance v2, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getTabTitle()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getSlotOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getSlotOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_2

    .line 234
    sget v1, Lcom/android/settings/R$string;->data_usage_no_simcard:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_2
    sget v1, Lcom/android/settings/R$string;->data_usage_tab_wifi:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    .line 144
    invoke-static {}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->getInstance()Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    .line 145
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->configOperatorDataModels()V

    .line 146
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->findOutCurrentUsingSimSlot()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->initData()V

    .line 96
    invoke-super {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/SecureService;->startService(Landroid/content/Context;)V

    .line 102
    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_0
    iput p1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    .line 111
    invoke-static {p0, p1}, Lcom/oneplus/security/network/OperatorInfoUtils;->setCurrentDisplayingSlotId(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->setSelectTab(I)V

    :cond_0
    const/4 p1, -0x1

    .line 117
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "tracker_event"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call this activity from trackerEvent:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageMainActivity"

    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "settings_shortcut_data"

    .line 133
    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string p1, "systemui_data"

    .line 130
    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string p1, "widget_data"

    .line 127
    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string p1, "settings_data"

    .line 124
    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->clearExistingOperatorDataModels()V

    .line 191
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    .line 195
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    .line 181
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    .line 182
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->unregisterOperatorValueListeners()V

    .line 183
    iget v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v1}, Lcom/oneplus/security/network/simcard/SimcardStateManager;->getShouldAlertSimcardHasPopedOut(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v0, v1}, Lcom/oneplus/security/network/simcard/SimcardStateManager;->setShouldAlertSimcardHasPopedOut(Landroid/content/Context;ZI)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->registerListener()V

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onSimOperatorCodeChanged(ILjava/lang/String;)V
    .locals 2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effective operator code loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataUsageMainActivity"

    invoke-static {p2, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    return-void
.end method

.method public onSimStateChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabPageSelected(I)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->onTabPageSelected(I)V

    const-string p1, "DataUsageMainActivity"

    const-string v0, "onTabPageSelected"

    .line 61
    invoke-static {p1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 63
    instance-of v0, p1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    .line 65
    invoke-virtual {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->ismNeedHeadView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->getCurrentSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    .line 67
    invoke-static {p0, v0}, Lcom/oneplus/security/network/OperatorInfoUtils;->setCurrentDisplayingSlotId(Landroid/content/Context;I)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onTrafficTotalAndUsedUpdate(JJI)V
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrafficTotalAndUsedUpdate totalByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",usedByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentDataSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageMainActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    if-ne p5, v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 372
    instance-of p5, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    if-eqz p5, :cond_1

    .line 373
    check-cast p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    .line 374
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrafficTotalAndUsedUpdate dataUsagePrefFragment = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->ismNeedHeadView()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 376
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->animateUpdateMonthlyRemainingData(JJ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "skip onTrafficTotalAndUsedUpdate"

    .line 366
    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshDataUsageUI fragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageMainActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const-string p0, "The fragment is not current selected fragment,no need to do any thing"

    .line 79
    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    instance-of v0, p1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    if-eqz v0, :cond_2

    .line 83
    check-cast p1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    .line 84
    invoke-virtual {p1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->ismNeedHeadView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->getCurrentSlotId()I

    move-result v0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataUsagePrefFragment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, v0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->requestDataUsageUpdate(I)V

    :cond_2
    return-void
.end method

.method protected restartActivity()V
    .locals 2

    .line 394
    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    if-nez v0, :cond_0

    const-string p0, "DataUsageMainActivity"

    const-string v0, "restartActivity isActivityShowing is false."

    .line 395
    invoke-static {p0, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 402
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 403
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
