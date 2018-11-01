.class public interface abstract Lscala/collection/generic/SeqForwarder;
.super Ljava/lang/Object;
.source "SeqForwarder.scala"

# interfaces
.implements Lscala/collection/Seq;
.implements Lscala/collection/generic/IterableForwarder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Seq",
        "<TA;>;",
        "Lscala/collection/generic/IterableForwarder",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract underlying()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation
.end method
