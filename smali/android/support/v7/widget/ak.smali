.class public final Landroid/support/v7/widget/ak;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:I


# direct methods
.method static synthetic a(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7340
    .line 8389
    iget-boolean v0, p0, Landroid/support/v7/widget/ak;->e:Z

    if-eqz v0, :cond_5

    .line 8414
    iget-object v0, p0, Landroid/support/v7/widget/ak;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ak;->c:I

    if-gtz v0, :cond_0

    .line 8415
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8417
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ak;->c:I

    if-gtz v0, :cond_1

    .line 8418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8391
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 8392
    iget v0, p0, Landroid/support/v7/widget/ak;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 8393
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/an;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ak;->a:I

    iget v2, p0, Landroid/support/v7/widget/ak;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/an;->a(II)V

    .line 8400
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/ak;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ak;->f:I

    .line 8401
    iget v0, p0, Landroid/support/v7/widget/ak;->f:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 8404
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8407
    :cond_2
    iput-boolean v5, p0, Landroid/support/v7/widget/ak;->e:Z

    :goto_1
    return-void

    .line 8395
    :cond_3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/an;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ak;->a:I

    iget v2, p0, Landroid/support/v7/widget/ak;->b:I

    iget v3, p0, Landroid/support/v7/widget/ak;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/an;->a(III)V

    goto :goto_0

    .line 8398
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/an;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ak;->a:I

    iget v2, p0, Landroid/support/v7/widget/ak;->b:I

    iget v3, p0, Landroid/support/v7/widget/ak;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/ak;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/an;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 8409
    :cond_5
    iput v5, p0, Landroid/support/v7/widget/ak;->f:I

    goto :goto_1
.end method
