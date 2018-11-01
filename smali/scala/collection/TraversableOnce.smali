.class public interface abstract Lscala/collection/TraversableOnce;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/collection/GenTraversableOnce;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenTraversableOnce",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
.end method

.method public abstract collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction",
            "<TA;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract copyToArray(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract copyToArray(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation
.end method

.method public abstract copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;)V"
        }
    .end annotation
.end method

.method public abstract foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)V"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract mkString()Ljava/lang/String;
.end method

.method public abstract mkString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract nonEmpty()Z
.end method

.method public abstract reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;TA;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract reduceOption(Lscala/Function2;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TA1;TA1;TA1;>;)",
            "Lscala/Option",
            "<TA1;>;"
        }
    .end annotation
.end method

.method public abstract seq()Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/TraversableOnce",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric",
            "<TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/runtime/Nothing$;",
            "TA;TCol;>;)TCol;"
        }
    .end annotation
.end method

.method public abstract toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract toBuffer()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract toList()Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less",
            "<TA;",
            "Lscala/Tuple2",
            "<TT;TU;>;>;)",
            "Lscala/collection/immutable/Map",
            "<TT;TU;>;"
        }
    .end annotation
.end method

.method public abstract toSeq()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract toSet()Lscala/collection/immutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract toTraversable()Lscala/collection/Traversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<TA;>;"
        }
    .end annotation
.end method
