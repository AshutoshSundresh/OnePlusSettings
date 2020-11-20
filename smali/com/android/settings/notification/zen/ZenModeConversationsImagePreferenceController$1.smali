.class Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;
.super Landroid/os/AsyncTask;
.source "ZenModeConversationsImagePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->loadConversations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->mDrawables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->mDrawables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    .line 134
    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ConversationChannelWrapper;

    .line 138
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    .line 140
    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Landroid/content/Context;

    move-result-object v4

    .line 141
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 142
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v7

    .line 144
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v8

    .line 139
    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->mDrawables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$200(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->mDrawables:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$400(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
