.class public interface abstract Lscala/collection/mutable/ResizableArray;
.super Ljava/lang/Object;
.source "ResizableArray.scala"

# interfaces
.implements Lscala/collection/mutable/IndexedSeq;
.implements Lscala/collection/mutable/IndexedSeqOptimized;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/IndexedSeq",
        "<TA;>;",
        "Lscala/collection/mutable/IndexedSeqOptimized",
        "<TA;",
        "Lscala/collection/mutable/ResizableArray",
        "<TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract array()[Ljava/lang/Object;
.end method

.method public abstract array_$eq([Ljava/lang/Object;)V
.end method

.method public abstract initialSize()I
.end method

.method public abstract length()I
.end method

.method public abstract size0()I
.end method

.method public abstract size0_$eq(I)V
.end method
