.class final Lcom/xueqiu/android/base/h5/l$6;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/l;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$6;->b:Lcom/xueqiu/android/base/h5/l;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/l$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$6;->b:Lcom/xueqiu/android/base/h5/l;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 855
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$6;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-void
.end method
