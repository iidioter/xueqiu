.class public Lcom/tencent/tauth/UiError;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public errorCode:I

.field public errorDetail:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    .line 29
    iput p1, p0, Lcom/tencent/tauth/UiError;->errorCode:I

    .line 30
    iput-object p3, p0, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    .line 31
    return-void
.end method
