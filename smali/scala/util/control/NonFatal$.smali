.class public final Lscala/util/control/NonFatal$;
.super Ljava/lang/Object;
.source "NonFatal.scala"


# static fields
.field public static final MODULE$:Lscala/util/control/NonFatal$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/NonFatal$;

    invoke-direct {v0}, Lscala/util/control/NonFatal$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    instance-of v2, p1, Ljava/lang/VirtualMachineError;

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 35
    :goto_1
    return v0

    .line 37
    :cond_0
    instance-of v2, p1, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/lang/LinkageError;

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lscala/util/control/ControlThrowable;

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 38
    goto :goto_1
.end method

.method public unapply(Ljava/lang/Throwable;)Lscala/Option;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lscala/util/control/NonFatal$;->apply(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method
