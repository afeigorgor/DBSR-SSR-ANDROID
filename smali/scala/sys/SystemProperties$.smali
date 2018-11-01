.class public final Lscala/sys/SystemProperties$;
.super Ljava/lang/Object;
.source "SystemProperties.scala"


# static fields
.field public static final MODULE$:Lscala/sys/SystemProperties$;


# instance fields
.field private volatile bitmap$0:B

.field private noTraceSupression:Lscala/sys/BooleanProp;

.field private propertyHelp:Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/SystemProperties$;

    invoke-direct {v0}, Lscala/sys/SystemProperties$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/SystemProperties$;->MODULE$:Lscala/sys/SystemProperties$;

    return-void
.end method

.method private addHelp(Lscala/sys/Prop;Ljava/lang/String;)Lscala/sys/Prop;
    .locals 2
    .param p1, "p"    # Lscala/sys/Prop;
    .param p2, "helpText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lscala/sys/Prop",
            "<*>;>(TP;",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lscala/sys/SystemProperties$;->propertyHelp()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {p1}, Lscala/sys/Prop;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lscala/collection/mutable/Map;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-object p1
.end method

.method private bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "helpText"    # Ljava/lang/String;

    .prologue
    .line 70
    .line 71
    const-string v0, "java."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/sys/BooleanProp$;->MODULE$:Lscala/sys/BooleanProp$;

    invoke-virtual {v0, p1}, Lscala/sys/BooleanProp$;->valueIsTrue(Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    .line 70
    :goto_0
    invoke-direct {p0, v0, p2}, Lscala/sys/SystemProperties$;->addHelp(Lscala/sys/Prop;Ljava/lang/String;)Lscala/sys/Prop;

    move-result-object v0

    check-cast v0, Lscala/sys/BooleanProp;

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lscala/sys/BooleanProp$;->MODULE$:Lscala/sys/BooleanProp$;

    invoke-virtual {v0, p1}, Lscala/sys/BooleanProp$;->keyExists(Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    goto :goto_0
.end method

.method private noTraceSupression$lzycompute()Lscala/sys/BooleanProp;
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-string v0, "scala.control.noTraceSuppression"

    const-string v1, "scala should not suppress any stack trace creation"

    invoke-direct {p0, v0, v1}, Lscala/sys/SystemProperties$;->bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    iput-object v0, p0, Lscala/sys/SystemProperties$;->noTraceSupression:Lscala/sys/BooleanProp;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->noTraceSupression:Lscala/sys/BooleanProp;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private propertyHelp()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->propertyHelp$lzycompute()Lscala/collection/mutable/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->propertyHelp:Lscala/collection/mutable/Map;

    goto :goto_0
.end method

.method private propertyHelp$lzycompute()Lscala/collection/mutable/Map;
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/collection/mutable/Map$;->MODULE$:Lscala/collection/mutable/Map$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Map;

    iput-object v0, p0, Lscala/sys/SystemProperties$;->propertyHelp:Lscala/collection/mutable/Map;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->propertyHelp:Lscala/collection/mutable/Map;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public noTraceSupression()Lscala/sys/BooleanProp;
    .locals 1

    .prologue
    .line 82
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->noTraceSupression$lzycompute()Lscala/sys/BooleanProp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->noTraceSupression:Lscala/sys/BooleanProp;

    goto :goto_0
.end method
