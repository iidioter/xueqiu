.class final Lcom/tencent/stat/StatStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/stat/StatStore;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/stat/StatStore;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/StatStore$1;->a:Lcom/tencent/stat/StatStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/StatStore$1;->a:Lcom/tencent/stat/StatStore;

    # invokes: Lcom/tencent/stat/StatStore;->loadUnsentEventCount()V
    invoke-static {v0}, Lcom/tencent/stat/StatStore;->access$000(Lcom/tencent/stat/StatStore;)V

    return-void
.end method