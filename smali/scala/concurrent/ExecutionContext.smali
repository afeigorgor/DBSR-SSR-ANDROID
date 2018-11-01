.class public interface abstract Lscala/concurrent/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/ExecutionContext$Implicits$;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/Runnable;)V
.end method

.method public abstract prepare()Lscala/concurrent/ExecutionContext;
.end method

.method public abstract reportFailure(Ljava/lang/Throwable;)V
.end method
