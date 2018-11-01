.class public Lscala/util/control/BreakControl;
.super Ljava/lang/Throwable;
.source "Breaks.scala"

# interfaces
.implements Lscala/util/control/ControlThrowable;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->$init$(Lscala/util/control/NoStackTrace;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->fillInStackTrace(Lscala/util/control/NoStackTrace;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$util$control$NoStackTrace$$super$fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
