.class public Lcom/github/shadowsocks/StreamLogger;
.super Ljava/lang/Thread;
.source "GuardedProcess.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field public final com$github$shadowsocks$StreamLogger$$tag:Ljava/lang/String;

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/github/shadowsocks/StreamLogger;->is:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/github/shadowsocks/StreamLogger;->com$github$shadowsocks$StreamLogger$$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/github/shadowsocks/StreamLogger;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    new-instance v1, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;-><init>(Lcom/github/shadowsocks/StreamLogger;)V

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/StreamLogger;->withCloseable(Ljava/io/Closeable;Lscala/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public withCloseable(Ljava/io/Closeable;Lscala/Function1;)Ljava/lang/Object;
    .locals 2
    .param p1, "t"    # Ljava/io/Closeable;
    .param p2, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/Function1",
            "<TT;TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    invoke-virtual {v0}, Lscala/util/control/Exception$;->allCatch()Lscala/util/control/Exception$Catch;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;

    invoke-direct {v1, p0, p1}, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;-><init>(Lcom/github/shadowsocks/StreamLogger;Ljava/io/Closeable;)V

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->andFinally(Lscala/Function0;)Lscala/util/control/Exception$Catch;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;-><init>(Lcom/github/shadowsocks/StreamLogger;Ljava/io/Closeable;Lscala/Function1;)V

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->apply(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
