.class public interface abstract Lscala/Product;
.super Ljava/lang/Object;
.source "Product.scala"

# interfaces
.implements Lscala/Equals;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract productArity()I
.end method

.method public abstract productElement(I)Ljava/lang/Object;
.end method

.method public abstract productIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract productPrefix()Ljava/lang/String;
.end method
