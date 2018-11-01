.class public interface abstract Lscala/concurrent/impl/Promise;
.super Ljava/lang/Object;
.source "Promise.scala"

# interfaces
.implements Lscala/concurrent/Future;
.implements Lscala/concurrent/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/impl/Promise$DefaultPromise;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/concurrent/Future",
        "<TT;>;",
        "Lscala/concurrent/Promise",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation
