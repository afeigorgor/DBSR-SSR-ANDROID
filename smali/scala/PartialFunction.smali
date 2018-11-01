.class public interface abstract Lscala/PartialFunction;
.super Ljava/lang/Object;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function1",
        "<TA;TB;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1",
            "<TA1;TB1;>;)TB1;"
        }
    .end annotation
.end method

.method public abstract isDefinedAt(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract runWith(Lscala/Function1;)Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TB;TU;>;)",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
