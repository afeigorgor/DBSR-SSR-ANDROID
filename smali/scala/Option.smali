.class public abstract Lscala/Option;
.super Ljava/lang/Object;
.source "Option.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/Option$WithFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public final getOrElse(Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .param p1, "default"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract isEmpty()Z
.end method

.method public final nonEmpty()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lscala/Option;->isDefined()Z

    move-result v0

    return v0
.end method

.method public final orNull(Lscala/Predef$$less$colon$less;)Ljava/lang/Object;
    .locals 1
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less",
            "<",
            "Lscala/runtime/Null$;",
            "TA1;>;)TA1;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lscala/Option$$anonfun$orNull$1;

    invoke-direct {v0, p0, p1}, Lscala/Option$$anonfun$orNull$1;-><init>(Lscala/Option;Lscala/Predef$$less$colon$less;)V

    invoke-virtual {p0, v0}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p0}, Lscala/Product$class;->productIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Lscala/Product$class;->productPrefix(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    goto :goto_0
.end method
