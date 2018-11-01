.class public Lscala/runtime/NonLocalReturnControl$mcZ$sp;
.super Lscala/runtime/NonLocalReturnControl;
.source "NonLocalReturnControl.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/NonLocalReturnControl",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final value$mcZ$sp:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value$mcZ$sp"    # Z

    .prologue
    .line 14
    iput-boolean p2, p0, Lscala/runtime/NonLocalReturnControl$mcZ$sp;->value$mcZ$sp:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;->value()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public value()Z
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;->value$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public value$mcZ$sp()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lscala/runtime/NonLocalReturnControl$mcZ$sp;->value$mcZ$sp:Z

    return v0
.end method
