.class public final Lcom/xiaomi/mipush/sdk/s;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/xiaomi/mipush/sdk/s;

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mipush/sdk/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/content/Context;

.field private b:Z

.field private d:Ljava/lang/String;

.field private f:Landroid/content/Intent;

.field private g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/s;->b:Z

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->f:Landroid/content/Intent;

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/s;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/s;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->c:Lcom/xiaomi/mipush/sdk/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/s;->c:Lcom/xiaomi/mipush/sdk/s;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->c:Lcom/xiaomi/mipush/sdk/s;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/s;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/s;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method private g()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_0

    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/xiaomi/g/a/af;)V
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/g/a/a;->b:Lcom/xiaomi/g/a/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;)Lcom/xiaomi/g/a/n;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "unregister fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    .line 3000
    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/g/a/r;Z)V
    .locals 4

    .prologue
    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->f:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/g/a/a;->a:Lcom/xiaomi/g/a/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;)Lcom/xiaomi/g/a/n;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "register fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    .line 1000
    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mipush_env_type"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    .line 2000
    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget v2, v2, Lcom/xiaomi/mipush/sdk/k;->j:I

    .line 0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->f:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;Lcom/xiaomi/g/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/g/a/a;",
            "Lcom/xiaomi/g/a/d;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/g/a/a;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/g/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLcom/xiaomi/g/a/d;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLcom/xiaomi/g/a/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/g/a/a;",
            "Z",
            "Lcom/xiaomi/g/a/d;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;Z)V

    return-void
.end method

.method public final a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/g/a/a;",
            "ZZ",
            "Lcom/xiaomi/g/a/d;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v8, v0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 0
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/g/a/a;",
            "ZZ",
            "Lcom/xiaomi/g/a/d;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/k;->a()Z

    move-result v0

    .line 0
    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    .line 5000
    new-instance v0, Lcom/xiaomi/mipush/sdk/t;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/t;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/t;->a:Lorg/apache/a/b;

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/t;->b:Lcom/xiaomi/g/a/a;

    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/t;->c:Z

    sget-object v1, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 0
    :cond_1
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->b()Landroid/content/Intent;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/g/a/n;

    move-result-object v0

    if-eqz p5, :cond_3

    .line 6000
    iput-object p5, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    :cond_3
    invoke-static {v0}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method final b()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/s;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8000
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 0
    :goto_0
    return-object v0

    .line 9000
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    const-string v5, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 0
    :goto_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 0
    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/s;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 10000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget v1, v1, Lcom/xiaomi/mipush/sdk/k;->j:I

    .line 0
    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->f:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 9

    sget-object v7, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/t;

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/t;->a:Lorg/apache/a/b;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/t;->b:Lcom/xiaomi/g/a/a;

    iget-boolean v3, v0, Lcom/xiaomi/mipush/sdk/t;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZZLcom/xiaomi/g/a/d;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final f()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/s;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11000
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "miui"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 0
    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/o;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Lcom/xiaomi/mipush/sdk/u;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v0}, Lcom/xiaomi/mipush/sdk/u;-><init>(Lcom/xiaomi/mipush/sdk/s;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    .line 12000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v0, v5, :cond_4

    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 0
    :goto_1
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    return v0

    .line 11000
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 12000
    :cond_4
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    .line 0
    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2
.end method
