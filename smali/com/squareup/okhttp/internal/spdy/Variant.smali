.class public interface abstract Lcom/squareup/okhttp/internal/spdy/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract getProtocol()Lcom/squareup/okhttp/Protocol;
.end method

.method public abstract newReader(Lc/f;Z)Lcom/squareup/okhttp/internal/spdy/FrameReader;
.end method

.method public abstract newWriter(Lc/e;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;
.end method