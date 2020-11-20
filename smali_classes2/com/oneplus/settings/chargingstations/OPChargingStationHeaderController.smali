.class public Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPChargingStationHeaderController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;


# instance fields
.field private enableButton:Landroid/widget/TextView;

.field private mChargingStationDetails:Landroid/view/View;

.field private mChargingStationDistance:Landroid/widget/TextView;

.field private mChargingStationFeatureReqView:Landroid/view/View;

.field private mChargingStationInfoText:Landroid/widget/TextView;

.field private mChargingStationName:Landroid/widget/TextView;

.field private mChargingStationOffText:Landroid/widget/TextView;

.field private mChargingStationOffView:Landroid/view/View;

.field private mFeatureUri:Landroid/net/Uri;

.field private mObserver:Landroid/database/ContentObserver;

.field private mStationDistanceUri:Landroid/net/Uri;

.field private mStationNameUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    new-instance p1, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->initUris()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->setView()V

    return-void
.end method

.method private getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0xa

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 152
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4051800000000000L    # 70.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_1

    const-wide v5, 0x4051400000000000L    # 69.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_1

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_2

    const-wide v5, 0x404d800000000000L    # 59.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_2

    .line 158
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_3

    const-wide v5, 0x4048800000000000L    # 49.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_3

    .line 160
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_4

    const-wide v5, 0x4043800000000000L    # 39.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_4

    .line 162
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_5

    const-wide/high16 v5, 0x403d000000000000L    # 29.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_5

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_6

    const-wide/high16 v5, 0x4033000000000000L    # 19.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_6

    .line 166
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-wide/16 v5, 0x0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_7

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_7

    .line 168
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->under_meters:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initUris()V
    .locals 1

    const-string v0, "op_charging_stations_feature_on"

    .line 61
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mFeatureUri:Landroid/net/Uri;

    const-string v0, "op_charging_station_beacon_name"

    .line 62
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationNameUri:Landroid/net/Uri;

    const-string v0, "op_charging_station_beacon_distance"

    .line 63
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationDistanceUri:Landroid/net/Uri;

    return-void
.end method

.method private isLocationEnabled()Z
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 176
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    return p0
.end method

.method private isOPFeatureEnabled()Z
    .locals 2

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_charging_stations_feature_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$setView$0(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setView()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->updateHeader()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationHeaderController$RxWddFa1TUqNf0vpzYVPYqS95po;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationHeaderController$RxWddFa1TUqNf0vpzYVPYqS95po;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showOffHeader(I)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateHeader()V
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isOPFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->op_enable_location_services:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isOPFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->op_enable_location_services:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isOPFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->op_keep_location_services:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->updateStationDetails()V

    :goto_0
    return-void
.end method

.method private updateStationDetails()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_station_beacon_name"

    invoke-static {v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getStringSystemProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "op_charging_station_beacon_distance"

    invoke-static {v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getStringGlobalProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDistance:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_0
    sget v0, Lcom/android/settings/R$string;->op_charging_station_no_station:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->showOffHeader(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 42
    invoke-static {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->setLocationUpdate(Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;)V

    .line 43
    sget v0, Lcom/android/settings/R$id;->op_charging_station_header1:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    .line 44
    sget v0, Lcom/android/settings/R$id;->op_charging_station_header2:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    .line 45
    sget v0, Lcom/android/settings/R$id;->op_charging_station_header3:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    .line 46
    sget v0, Lcom/android/settings/R$id;->op_charging_station_animation:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    sget v1, Lcom/android/settings/R$id;->op_charging_station_header_details1:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDistance:Landroid/widget/TextView;

    .line 50
    sget v1, Lcom/android/settings/R$id;->op_charging_station_header_details2:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationName:Landroid/widget/TextView;

    .line 51
    sget v1, Lcom/android/settings/R$id;->op_charging_station_header_off_text:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffText:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/android/settings/R$id;->op_feature_text:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    .line 53
    sget v1, Lcom/android/settings/R$id;->op_enable_button:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 57
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->setView()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setView$0$OPChargingStationHeaderController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->lambda$setView$0(Landroid/view/View;)V

    return-void
.end method

.method public onOPLocationUpdate()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->updateHeader()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mFeatureUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationDistanceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationNameUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->initUris()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mFeatureUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationNameUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationDistanceUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->setView()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
