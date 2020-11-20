.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;
.super Ljava/lang/Object;
.source "ConditionContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardController;
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private final mContext:Landroid/content/Context;

.field private mIsExpanded:Z

.field private mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    .line 62
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->startMonitoringStateChange()V

    return-void
.end method

.method private getConditionalFooterCard(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    if-eqz p0, :cond_0

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    .line 183
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;-><init>()V

    const-string v0, "condition_footer"

    .line 185
    invoke-virtual {p1, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-wide v0, -0x3f07961000000000L    # -99999.0

    .line 186
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->VIEW_TYPE:I

    .line 187
    invoke-virtual {p1, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 188
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p1

    .line 184
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 191
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getConditionalHeaderCard(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    if-nez p0, :cond_0

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 197
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;-><init>()V

    .line 199
    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;->setConditionalCards(Ljava/util/List;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;

    const-string p1, "condition_header"

    .line 200
    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-wide v1, -0x3f07961000000000L    # -99999.0

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->VIEW_TYPE:I

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 203
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p1

    .line 198
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 206
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getExpandedConditionalCards(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    if-nez p0, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 168
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    .line 167
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 171
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 173
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    .line 174
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 175
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    .line 174
    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0

    .line 165
    :cond_3
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method buildConditionalCardsWithFooterOrHeader(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x3

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->getExpandedConditionalCards(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 156
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->getConditionalFooterCard(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->getConditionalHeaderCard(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 157
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 2

    .line 97
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    .line 98
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getConditionId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onActionClick(J)V

    return-void
.end method

.method public onConditionsChanged()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getDisplayableCards()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->buildConditionalCardsWithFooterOrHeader(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 114
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    invoke-interface {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;->onContextualCardUpdated(Ljava/util/Map;)V

    return-void
.end method

.method public onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    return-void
.end method

.method public onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 3

    .line 91
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    .line 92
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getConditionId()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onPrimaryClick(Landroid/content/Context;J)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->startMonitoringStateChange()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->stopMonitoringStateChange()V

    return-void
.end method

.method public setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    return-void
.end method
