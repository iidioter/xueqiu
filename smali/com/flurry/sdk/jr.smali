.class public Lcom/flurry/sdk/jr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/lg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/lf;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:J

.field private volatile e:J

.field private volatile f:J

.field private volatile g:J

.field private volatile h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/flurry/sdk/jr$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jr$1;-><init>(Lcom/flurry/sdk/jr;)V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->b:Lcom/flurry/sdk/kb;

    .line 57
    iput-wide v2, p0, Lcom/flurry/sdk/jr;->d:J

    .line 58
    iput-wide v2, p0, Lcom/flurry/sdk/jr;->e:J

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/jr;->f:J

    .line 60
    iput-wide v2, p0, Lcom/flurry/sdk/jr;->g:J

    .line 62
    iput-wide v2, p0, Lcom/flurry/sdk/jr;->h:J

    .line 73
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jr;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    .line 75
    new-instance v0, Lcom/flurry/sdk/jr$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jr$2;-><init>(Lcom/flurry/sdk/jr;)V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->k:Ljava/util/Map;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jr;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/jr;)Lcom/flurry/sdk/kb;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/jr;->b:Lcom/flurry/sdk/kb;

    return-object v0
.end method

.method private b(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    sget-object v0, Lcom/flurry/sdk/jr;->a:Ljava/lang/String;

    const-string v1, "Flurry session id cannot be created."

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-object v0, Lcom/flurry/sdk/jr;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Flurry session id started:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/flurry/sdk/jr;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/flurry/sdk/lg;

    invoke-direct {v0}, Lcom/flurry/sdk/lg;-><init>()V

    .line 110
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/lg;->a:Ljava/lang/ref/WeakReference;

    .line 111
    iput-object p1, v0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lf;

    .line 112
    sget-object v1, Lcom/flurry/sdk/lg$a;->b:Lcom/flurry/sdk/lg$a;

    iput-object v1, v0, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/lg$a;

    .line 113
    invoke-virtual {v0}, Lcom/flurry/sdk/lg;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 117
    invoke-static {}, Lcom/flurry/sdk/lh;->a()Lcom/flurry/sdk/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lh;->c()J

    move-result-wide v0

    .line 120
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 121
    iget-wide v2, p0, Lcom/flurry/sdk/jr;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/jr;->g:J

    .line 123
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->c:Ljava/lang/ref/WeakReference;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/jr;->d:J

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/jr;->e:J

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/jr;->b(Lcom/flurry/sdk/lf;Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jr$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jr$3;-><init>(Lcom/flurry/sdk/jr;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/jr;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jr;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/jr;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/jr;->f:J

    .line 127
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/jr;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->f:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->g:J

    return-wide v0
.end method

.method public declared-synchronized g()J
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/jr;->e:J

    sub-long/2addr v0, v2

    .line 155
    iget-wide v2, p0, Lcom/flurry/sdk/jr;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/sdk/jr;->h:J

    .line 157
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 155
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/jr;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/jr;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jr;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jr;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jr;->k:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
