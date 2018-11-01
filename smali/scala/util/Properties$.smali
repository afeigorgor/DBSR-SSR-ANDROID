.class public final Lscala/util/Properties$;
.super Ljava/lang/Object;
.source "Properties.scala"

# interfaces
.implements Lscala/util/PropertiesTrait;


# static fields
.field public static final MODULE$:Lscala/util/Properties$;


# instance fields
.field private final ScalaCompilerVersion:Ljava/util/jar/Attributes$Name;

.field private volatile bitmap$0:Z

.field private final copyrightString:Ljava/lang/String;

.field private final developmentVersion:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final propFilename:Ljava/lang/String;

.field private final releaseVersion:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scalaProps:Ljava/util/Properties;

.field private final versionString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Properties$;

    invoke-direct {v0}, Lscala/util/Properties$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->$init$(Lscala/util/PropertiesTrait;)V

    .line 23
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Scala-Compiler-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lscala/util/Properties$;->ScalaCompilerVersion:Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method private scalaProps$lzycompute()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/util/Properties$;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->scalaProps(Lscala/util/PropertiesTrait;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lscala/util/Properties$;->scalaProps:Ljava/util/Properties;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/util/Properties$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/util/Properties$;->scalaProps:Ljava/util/Properties;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public lineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->lineSeparator(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pickJarBasedOn()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lscala/Option",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 19
    const-class v0, Lscala/Option;

    return-object v0
.end method

.method public propCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "library"

    return-object v0
.end method

.method public propFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lscala/util/Properties$;->propFilename:Ljava/lang/String;

    return-object v0
.end method

.method public propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alt"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->propOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public propOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public propOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propOrNull(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->copyrightString:Ljava/lang/String;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V
    .locals 0
    .param p1, "x$1"    # Lscala/Option;

    .prologue
    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->developmentVersion:Lscala/Option;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->propFilename:Ljava/lang/String;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V
    .locals 0
    .param p1, "x$1"    # Lscala/Option;

    .prologue
    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->releaseVersion:Lscala/Option;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->versionString:Ljava/lang/String;

    return-void
.end method

.method public scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alt"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->scalaPropOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scalaPropOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->scalaPropOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public scalaProps()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lscala/util/Properties$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/util/Properties$;->scalaProps:Ljava/util/Properties;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lscala/util/Properties$;->scalaProps$lzycompute()Ljava/util/Properties;

    move-result-object v0

    goto :goto_0
.end method
