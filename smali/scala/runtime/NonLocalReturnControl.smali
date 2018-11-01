.class public Lscala/runtime/NonLocalReturnControl;
.super Ljava/lang/Throwable;
.source "NonLocalReturnControl.scala"

# interfaces
.implements Lscala/util/control/ControlThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Throwable;",
        "Lscala/util/control/ControlThrowable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lscala/runtime/NonLocalReturnControl;->key:Ljava/lang/Object;

    iput-object p2, p0, Lscala/runtime/NonLocalReturnControl;->value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->$init$(Lscala/util/control/NoStackTrace;)V

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 15
    return-object p0
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lscala/runtime/NonLocalReturnControl;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic scala$util$control$NoStackTrace$$super$fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lscala/runtime/NonLocalReturnControl;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public value$mcZ$sp()Z
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
