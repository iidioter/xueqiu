.class final Lcom/xueqiu/android/common/n$7;
.super Ljava/lang/Object;
.source "PopAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/n;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/xueqiu/android/common/n$7;->a:Lcom/xueqiu/android/common/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const v1, 0x7f040009

    .line 402
    iget-object v0, p0, Lcom/xueqiu/android/common/n$7;->a:Lcom/xueqiu/android/common/n;

    iget-object v0, v0, Lcom/xueqiu/android/common/n;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/common/n$7;->a:Lcom/xueqiu/android/common/n;

    iget-object v0, v0, Lcom/xueqiu/android/common/n;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 406
    iget-object v0, p0, Lcom/xueqiu/android/common/n$7;->a:Lcom/xueqiu/android/common/n;

    iget-object v0, v0, Lcom/xueqiu/android/common/n;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 408
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
