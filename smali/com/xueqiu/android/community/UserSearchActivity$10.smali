.class final Lcom/xueqiu/android/community/UserSearchActivity$10;
.super Lcom/xueqiu/android/base/b/p;
.source "UserSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserSearchActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->c:Lcom/xueqiu/android/community/UserSearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->b:Ljava/util/Map;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 376
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1384
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->c:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->h(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->c:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->h(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    .line 1386
    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->c:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->c:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/UserSearchActivity;->h(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->c:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$10;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 376
    :cond_0
    return-void
.end method
