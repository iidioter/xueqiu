.class final Lcom/xueqiu/android/message/ChatActivity$51$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity$51;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity$51;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity$51;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1589
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 3074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 2592
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 2593
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->g(Lcom/xueqiu/android/message/ChatActivity;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    .line 3082
    iget-object v3, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 2593
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 2594
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 2595
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2596
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 2597
    const-string v5, "message"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-static {v5}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v5

    .line 2598
    invoke-static {v5}, Lcom/xueqiu/android/message/model/Message;->wrapPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v5

    .line 2599
    const-string v6, "error"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2600
    const-string v6, "ChatActivity"

    const-string v7, "send message error:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v4, v4, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v4, v5}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    .line 2595
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2603
    :cond_0
    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v4, v4, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v4}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 2604
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2608
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v1, v1, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 2609
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessages(Ljava/util/List;)Ljava/util/List;

    .line 2610
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/base/storage/DBManager;->updateTalkByMessages(Ljava/util/List;)Ljava/util/List;

    .line 2611
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/List;)V

    .line 2612
    const-string v0, "ChatActivity"

    const-string v1, "send image successful."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    :cond_2
    return-void

    .line 2614
    :cond_3
    const-string v0, "ChatActivity"

    const-string v1, "send images failed."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 2616
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$51$1;->b:Lcom/xueqiu/android/message/ChatActivity$51;

    iget-object v2, v2, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    goto :goto_2
.end method
