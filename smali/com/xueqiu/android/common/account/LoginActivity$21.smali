.class final Lcom/xueqiu/android/common/account/LoginActivity$21;
.super Lcom/xueqiu/android/base/b/p;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$21;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$21;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 823
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 824
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 818
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1828
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$21;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 1829
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$21;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/common/model/LoginResult;)V

    .line 818
    return-void
.end method
