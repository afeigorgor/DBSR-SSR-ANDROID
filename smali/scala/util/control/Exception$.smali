.class public final Lscala/util/control/Exception$;
.super Ljava/lang/Object;
.source "Exception.scala"


# static fields
.field public static final MODULE$:Lscala/util/control/Exception$;


# instance fields
.field private final noCatch:Lscala/util/control/Exception$Catch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/control/Exception$Catch",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final nothingCatcher:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/Exception$;

    invoke-direct {v0}, Lscala/util/control/Exception$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    .line 148
    new-instance v0, Lscala/util/control/Exception$$anonfun$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$1;-><init>()V

    new-instance v1, Lscala/util/control/Exception$$anonfun$2;

    invoke-direct {v1}, Lscala/util/control/Exception$$anonfun$2;-><init>()V

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    new-instance v3, Lscala/util/control/Exception$$anon$1;

    invoke-direct {v3, v0, v1, v2}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    iput-object v3, p0, Lscala/util/control/Exception$;->nothingCatcher:Lscala/PartialFunction;

    .line 153
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$;->nothingCatcher()Lscala/PartialFunction;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v3, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    new-instance v3, Lscala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1;

    invoke-direct {v3}, Lscala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    const-string v1, "<nothing>"

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Catch;

    iput-object v0, p0, Lscala/util/control/Exception$;->noCatch:Lscala/util/control/Exception$Catch;

    return-void
.end method


# virtual methods
.method public final allCatch()Lscala/util/control/Exception$Catch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/control/Exception$Catch",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$;->allCatcher()Lscala/PartialFunction;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v2}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$2()Lscala/Option;

    move-result-object v2

    sget-object v3, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v3}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$3()Lscala/Function1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    const-string v1, "<everything>"

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Catch;

    return-object v0
.end method

.method public final allCatcher()Lscala/PartialFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lscala/util/control/Exception$$anonfun$allCatcher$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$allCatcher$1;-><init>()V

    new-instance v1, Lscala/util/control/Exception$$anonfun$allCatcher$2;

    invoke-direct {v1}, Lscala/util/control/Exception$$anonfun$allCatcher$2;-><init>()V

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    new-instance v3, Lscala/util/control/Exception$$anon$1;

    invoke-direct {v3, v0, v1, v2}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    return-object v3
.end method

.method public final nothingCatcher()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lscala/util/control/Exception$;->nothingCatcher:Lscala/PartialFunction;

    return-object v0
.end method

.method public shouldRethrow(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 58
    instance-of v1, p1, Lscala/util/control/ControlThrowable;

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    instance-of v1, p1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method
