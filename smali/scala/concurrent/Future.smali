.class public interface abstract Lscala/concurrent/Future;
.super Ljava/lang/Object;
.source "Future.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<TT;>;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation
.end method
