.class Landroid/support/v4/content/e;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"

# interfaces
.implements Landroid/support/v4/content/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/d/a;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 44
    if-eqz p7, :cond_0

    .line 1055
    invoke-virtual {p7}, Landroid/support/v4/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    new-instance v0, Landroid/support/v4/d/b;

    invoke-direct {v0}, Landroid/support/v4/d/b;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
