.class public final Lcom/xueqiu/android/base/a$5;
.super Lcom/xueqiu/android/base/b/p;
.source "AdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/a;
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
.field final synthetic a:Lcom/xueqiu/android/base/a;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/a;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/xueqiu/android/base/a$5;->a:Lcom/xueqiu/android/base/a;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 390
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 391
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 387
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1395
    if-eqz p1, :cond_0

    .line 1398
    invoke-static {}, Lcom/xueqiu/android/base/a;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeBannerAd response = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-static {}, Lcom/xueqiu/android/base/a;->m()V

    .line 387
    :cond_0
    return-void
.end method
