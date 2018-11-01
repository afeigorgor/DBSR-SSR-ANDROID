.class public abstract Lscala/runtime/AbstractFunction2;
.super Ljava/lang/Object;
.source "AbstractFunction2.scala"

# interfaces
.implements Lscala/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function2",
        "<TT1;TT2;TR;>;"
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function2$class;->$init$(Lscala/Function2;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function2$class;->toString(Lscala/Function2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
