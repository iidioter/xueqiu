.class Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lorg/apache/http/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 50
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7

    .prologue
    .line 58
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz p3, :cond_0

    .line 63
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 64
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 88
    :cond_0
    if-ne p0, p1, :cond_1

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p1, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    check-cast p1, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object v1, p1, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFactory()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
