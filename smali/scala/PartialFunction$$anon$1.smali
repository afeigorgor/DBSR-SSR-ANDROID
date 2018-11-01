.class public final Lscala/PartialFunction$$anon$1;
.super Ljava/lang/Object;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/PartialFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/PartialFunction$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/PartialFunction",
        "<",
        "Ljava/lang/Object;",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# instance fields
.field private final lift:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Lscala/None$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    .line 256
    new-instance v0, Lscala/PartialFunction$$anon$1$$anonfun$3;

    invoke-direct {v0, p0}, Lscala/PartialFunction$$anon$1$$anonfun$3;-><init>(Lscala/PartialFunction$$anon$1;)V

    iput-object v0, p0, Lscala/PartialFunction$$anon$1;->lift:Lscala/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lscala/PartialFunction$$anon$1;->apply(Ljava/lang/Object;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public apply(Ljava/lang/Object;)Lscala/runtime/Nothing$;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 253
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 251
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1",
            "<TA1;TB1;>;)TB1;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
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
            "<",
            "Lscala/runtime/Nothing$;",
            "TU;>;)",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    iget-object v0, v0, Lscala/PartialFunction$;->scala$PartialFunction$$constFalse:Lscala/Function1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    invoke-static {p0}, Lscala/Function1$class;->toString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
