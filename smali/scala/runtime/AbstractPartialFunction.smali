.class public abstract Lscala/runtime/AbstractPartialFunction;
.super Ljava/lang/Object;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/PartialFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/PartialFunction",
        "<TT1;TR;>;"
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TR;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/runtime/AbstractPartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcVI$sp(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/runtime/AbstractPartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TT1;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1",
            "<TA1;TB1;>;)TB1;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .param p1, "action"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TR;TU;>;)",
            "Lscala/Function1",
            "<TT1;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lscala/Function1$class;->toString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
