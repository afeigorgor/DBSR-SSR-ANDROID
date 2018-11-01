.class public abstract Lscala/runtime/AbstractFunction1;
.super Ljava/lang/Object;
.source "AbstractFunction1.scala"

# interfaces
.implements Lscala/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function1",
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 12
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcZI$sp(I)Z
    .locals 1
    .param p1, "v1"    # I

    .prologue
    .line 12
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function1$class;->toString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
