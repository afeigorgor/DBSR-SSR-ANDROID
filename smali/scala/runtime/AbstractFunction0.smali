.class public abstract Lscala/runtime/AbstractFunction0;
.super Ljava/lang/Object;
.source "AbstractFunction0.scala"

# interfaces
.implements Lscala/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function0",
        "<TR;>;"
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

    invoke-static {p0}, Lscala/Function0$class;->$init$(Lscala/Function0;)V

    return-void
.end method


# virtual methods
.method public apply$mcF$sp()F
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function0$class;->apply$mcF$sp(Lscala/Function0;)F

    move-result v0

    return v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function0$class;->apply$mcI$sp(Lscala/Function0;)I

    move-result v0

    return v0
.end method

.method public apply$mcV$sp()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function0$class;->apply$mcV$sp(Lscala/Function0;)V

    return-void
.end method

.method public apply$mcZ$sp()Z
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function0$class;->apply$mcZ$sp(Lscala/Function0;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lscala/Function0$class;->toString(Lscala/Function0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
