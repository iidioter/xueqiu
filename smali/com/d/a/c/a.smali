.class public final Lcom/d/a/c/a;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# static fields
.field private static a:Lcom/d/a/b/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 40
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 41
    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 42
    new-instance v1, Lcom/d/a/b/a/f;

    invoke-direct {v1, v0, v0}, Lcom/d/a/b/a/f;-><init>(II)V

    sput-object v1, Lcom/d/a/c/a;->a:Lcom/d/a/b/a/f;

    .line 43
    return-void
.end method

.method public static a(Lcom/d/a/b/a/f;)I
    .locals 6

    .prologue
    .line 155
    .line 5048
    iget v0, p0, Lcom/d/a/b/a/f;->a:I

    .line 5052
    iget v1, p0, Lcom/d/a/b/a/f;->b:I

    .line 157
    sget-object v2, Lcom/d/a/c/a;->a:Lcom/d/a/b/a/f;

    .line 6048
    iget v2, v2, Lcom/d/a/b/a/f;->a:I

    .line 158
    sget-object v3, Lcom/d/a/c/a;->a:Lcom/d/a/b/a/f;

    .line 6052
    iget v3, v3, Lcom/d/a/b/a/f;->b:I

    .line 160
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 161
    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/d/a/b/a/f;Lcom/d/a/b/a/f;IZ)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 92
    .line 2048
    iget v2, p0, Lcom/d/a/b/a/f;->a:I

    .line 2052
    iget v3, p0, Lcom/d/a/b/a/f;->b:I

    .line 3048
    iget v4, p1, Lcom/d/a/b/a/f;->a:I

    .line 3052
    iget v5, p1, Lcom/d/a/b/a/f;->b:I

    .line 99
    sget-object v0, Lcom/d/a/c/a$1;->a:[I

    add-int/lit8 v6, p2, -0x1

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 124
    :cond_0
    :goto_0
    if-gtz v0, :cond_7

    .line 3133
    :goto_1
    sget-object v0, Lcom/d/a/c/a;->a:Lcom/d/a/b/a/f;

    .line 4048
    iget v0, v0, Lcom/d/a/b/a/f;->a:I

    .line 3134
    sget-object v4, Lcom/d/a/c/a;->a:Lcom/d/a/b/a/f;

    .line 4052
    iget v4, v4, Lcom/d/a/b/a/f;->b:I

    .line 3135
    :goto_2
    div-int v5, v2, v1

    if-gt v5, v0, :cond_1

    div-int v5, v3, v1

    if-le v5, v4, :cond_6

    .line 3136
    :cond_1
    if-eqz p3, :cond_5

    .line 3137
    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 101
    :pswitch_0
    if-eqz p3, :cond_3

    .line 102
    div-int/lit8 v6, v2, 0x2

    .line 103
    div-int/lit8 v7, v3, 0x2

    move v0, v1

    .line 104
    :goto_3
    div-int v8, v6, v0

    if-gt v8, v4, :cond_2

    div-int v8, v7, v0

    if-le v8, v5, :cond_0

    .line 105
    :cond_2
    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 108
    :cond_3
    div-int v0, v2, v4

    div-int v4, v3, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_1
    if-eqz p3, :cond_4

    .line 113
    div-int/lit8 v6, v2, 0x2

    .line 114
    div-int/lit8 v7, v3, 0x2

    move v0, v1

    .line 115
    :goto_4
    div-int v8, v6, v0

    if-le v8, v4, :cond_0

    div-int v8, v7, v0

    if-le v8, v5, :cond_0

    .line 116
    mul-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 119
    :cond_4
    div-int v0, v2, v4

    div-int v4, v3, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 3139
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 129
    :cond_6
    return v1

    :cond_7
    move v1, v0

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/d/a/b/e/a;Lcom/d/a/b/a/f;)Lcom/d/a/b/a/f;
    .locals 3

    .prologue
    .line 54
    invoke-interface {p0}, Lcom/d/a/b/e/a;->a()I

    move-result v0

    .line 55
    if-gtz v0, :cond_0

    .line 1048
    iget v0, p1, Lcom/d/a/b/a/f;->a:I

    .line 57
    :cond_0
    invoke-interface {p0}, Lcom/d/a/b/e/a;->b()I

    move-result v1

    .line 58
    if-gtz v1, :cond_1

    .line 1052
    iget v1, p1, Lcom/d/a/b/a/f;->b:I

    .line 60
    :cond_1
    new-instance v2, Lcom/d/a/b/a/f;

    invoke-direct {v2, v0, v1}, Lcom/d/a/b/a/f;-><init>(II)V

    return-object v2
.end method

.method public static b(Lcom/d/a/b/a/f;Lcom/d/a/b/a/f;IZ)F
    .locals 7

    .prologue
    .line 190
    .line 7048
    iget v3, p0, Lcom/d/a/b/a/f;->a:I

    .line 7052
    iget v4, p0, Lcom/d/a/b/a/f;->b:I

    .line 8048
    iget v0, p1, Lcom/d/a/b/a/f;->a:I

    .line 8052
    iget v1, p1, Lcom/d/a/b/a/f;->b:I

    .line 195
    int-to-float v2, v3

    int-to-float v5, v0

    div-float/2addr v2, v5

    .line 196
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 200
    sget v6, Lcom/d/a/b/a/i;->a:I

    if-ne p2, v6, :cond_0

    cmpl-float v6, v2, v5

    if-gez v6, :cond_1

    :cond_0
    sget v6, Lcom/d/a/b/a/i;->b:I

    if-ne p2, v6, :cond_5

    cmpg-float v6, v2, v5

    if-gez v6, :cond_5

    .line 202
    :cond_1
    int-to-float v1, v4

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    move v1, v0

    .line 208
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 209
    if-nez p3, :cond_2

    if-ge v1, v3, :cond_2

    if-lt v2, v4, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    if-eq v1, v3, :cond_4

    if-eq v2, v4, :cond_4

    .line 210
    :cond_3
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 213
    :cond_4
    return v0

    .line 204
    :cond_5
    int-to-float v0, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    goto :goto_0
.end method
