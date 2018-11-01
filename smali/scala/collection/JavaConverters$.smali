.class public final Lscala/collection/JavaConverters$;
.super Ljava/lang/Object;
.source "JavaConverters.scala"

# interfaces
.implements Lscala/collection/convert/DecorateAsJava;
.implements Lscala/collection/convert/DecorateAsScala;


# static fields
.field public static final MODULE$:Lscala/collection/JavaConverters$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/JavaConverters$;

    invoke-direct {v0}, Lscala/collection/JavaConverters$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-static {p0}, Lscala/collection/convert/DecorateAsJava$class;->$init$(Lscala/collection/convert/DecorateAsJava;)V

    invoke-static {p0}, Lscala/collection/convert/DecorateAsScala$class;->$init$(Lscala/collection/convert/DecorateAsScala;)V

    return-void
.end method


# virtual methods
.method public asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .param p1, "l"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala",
            "<",
            "Lscala/collection/mutable/Buffer",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->asScalaBufferConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v0

    return-object v0
.end method

.method public propertiesAsScalaMapConverter(Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .param p1, "p"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lscala/collection/convert/Decorators$AsScala",
            "<",
            "Lscala/collection/mutable/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->propertiesAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v0

    return-object v0
.end method
