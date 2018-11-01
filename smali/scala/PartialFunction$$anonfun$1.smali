.class public final Lscala/PartialFunction$$anonfun$1;
.super Lscala/runtime/AbstractPartialFunction;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Serializable;


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
        "Lscala/runtime/AbstractPartialFunction",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x1"    # Ljava/lang/Object;
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
    .line 215
    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    iget-object v0, v0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public final isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method
