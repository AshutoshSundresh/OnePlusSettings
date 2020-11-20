.class public Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;
    }
.end annotation


# static fields
.field private static final ALARMS_PATH:Ljava/lang/String;

.field private static final NOTIFICATIONS_PATH:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RECORD_PATH:Ljava/lang/String;

.field private static final RECORD_URI:Landroid/net/Uri;

.field private static final RINGTONE_PATH:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field private static final SELECTION_ARGS_ALL:[Ljava/lang/String;

.field private static final SELECTION_ARGS_PART:[Ljava/lang/String;


# instance fields
.field private isFirst:Z

.field private mHeaderMargin:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mNofileView:Landroid/view/View;

.field private mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

.field private mSystemRings:Ljava/util/List;

.field private mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_display_name"

    const-string v3, "title"

    const-string v4, "_data"

    const-string v5, "mime_type"

    const-string v6, "title"

    .line 70
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sput-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 169
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 212
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->startTask(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHeaderMargin:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateExternalFile(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateChecks(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    return-object p1
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .line 47
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isApeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkDir()Ljava/lang/String;
    .locals 2

    .line 482
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    .line 483
    iget p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 487
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    goto :goto_1

    .line 485
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 489
    :cond_2
    :goto_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 491
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object v0
.end method

.method private initActionbar()V
    .locals 7

    .line 126
    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v1, Lcom/android/settings/R$layout;->op_spinner_main:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 139
    sget v2, Lcom/android/settings/R$id;->id_spinner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 141
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->oneplus_select_items:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v4, Landroid/widget/ArrayAdapter;

    sget v5, Lcom/android/settings/R$layout;->op_simple_spinner_item:I

    const v6, 0x1020014

    invoke-direct {v4, p0, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v3, 0x1090009

    .line 144
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 146
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private isApeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "audio/*"

    .line 365
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 369
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    move p0, p1

    .line 371
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    if-ge p0, p2, :cond_1

    .line 372
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p2

    const-string v1, "mime"

    .line 373
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "audio/"

    .line 375
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    :goto_2
    :try_start_2
    const-string p2, ""

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtoneCopyFrom3rdParty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 387
    :cond_2
    throw p0

    :cond_3
    :goto_4
    return p1
.end method

.method private startTask(I)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->setClose()V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHeaderMargin:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 402
    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateChecks(Landroid/net/Uri;)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    if-nez v1, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 237
    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    goto :goto_0

    .line 239
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateDb(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10

    .line 528
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 529
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v5, v9

    const-string v4, "_data=?"

    const/4 v6, 0x0

    move-object v2, v7

    .line 530
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {v7, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    .line 537
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_data"

    .line 538
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v3, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object p1, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mimetype:Ljava/lang/String;

    const-string v3, "mime_type"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    if-ne p1, v8, :cond_1

    const-string p1, "is_ringtone"

    .line 542
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "is_alarm"

    .line 547
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "is_notification"

    .line 545
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 549
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v7, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v7, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    :goto_2
    if-eqz v1, :cond_4

    .line 555
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "defaultitem:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " path:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "chenhl"

    invoke-static {p2, p1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private updateExternalFile(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;
    .locals 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chenhl"

    invoke-static {v1, v0}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->filepath:Ljava/lang/String;

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$4;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v2, 0x12c

    .line 467
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->playRingtone(ILandroid/net/Uri;)V

    if-eqz v0, :cond_3

    const-string v2, "/storage/emulated/legacy"

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 474
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->checkDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 476
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 478
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateDb(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 471
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 510
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 511
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 512
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x5a4

    new-array p2, p2, [B

    .line 515
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 517
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 520
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 523
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_selected_item_uri"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget p1, Lcom/android/settings/R$layout;->op_preference_list_content_material:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 113
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->initActionbar()V

    .line 114
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    .line 115
    sget p1, Lcom/android/settings/R$id;->id_empty:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/view/View;

    .line 116
    sget p1, Lcom/android/settings/R$id;->id_progress:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 117
    sget p1, Lcom/android/settings/R$id;->header_margin:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHeaderMargin:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 119
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 121
    const-class p1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate startTask"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->startTask(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->setClose()V

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    .line 568
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected updateSelected()V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method
