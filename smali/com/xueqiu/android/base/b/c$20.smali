.class final Lcom/xueqiu/android/base/b/c$20;
.super Lcom/google/gson/reflect/TypeToken;
.source "CubeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/c;->c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/NavDailyList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/c;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/xueqiu/android/base/b/c$20;->a:Lcom/xueqiu/android/base/b/c;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method