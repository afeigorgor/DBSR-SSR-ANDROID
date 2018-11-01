.class public abstract Lscala/Predef$$less$colon$less;
.super Ljava/lang/Object;
.source "Predef.scala"

# interfaces
.implements Lscala/Function1;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "$less$colon$less"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function1",
        "<TFrom;TTo;>;",
        "Lscala/Serializable;"
    }
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
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 388
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    invoke-static {p0}, Lscala/Function1$class;->toString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
