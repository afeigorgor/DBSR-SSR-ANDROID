.class public Lscala/util/control/Breaks;
.super Ljava/lang/Object;
.source "Breaks.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final scala$util$control$Breaks$$breakException:Lscala/util/control/BreakControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lscala/util/control/BreakControl;

    invoke-direct {v0}, Lscala/util/control/BreakControl;-><init>()V

    iput-object v0, p0, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException:Lscala/util/control/BreakControl;

    return-void
.end method


# virtual methods
.method public break()Lscala/runtime/Nothing$;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;

    move-result-object v0

    throw v0
.end method

.method public breakable(Lscala/Function0;)V
    .locals 2
    .param p1, "op"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_0
    .catch Lscala/util/control/BreakControl; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {p0}, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    throw v0
.end method

.method public scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException:Lscala/util/control/BreakControl;

    return-object v0
.end method
