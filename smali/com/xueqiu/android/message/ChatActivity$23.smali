.class final Lcom/xueqiu/android/message/ChatActivity$23;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$23;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$23;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$23;->b:Lcom/xueqiu/android/message/ChatActivity;

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$23$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$23$1;-><init>(Lcom/xueqiu/android/message/ChatActivity$23;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method
