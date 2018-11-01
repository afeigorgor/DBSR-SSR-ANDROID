.class public final Lscala/collection/convert/WrapAsScala$;
.super Ljava/lang/Object;
.source "WrapAsScala.scala"

# interfaces
.implements Lscala/collection/convert/WrapAsScala;


# static fields
.field public static final MODULE$:Lscala/collection/convert/WrapAsScala$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/convert/WrapAsScala$;

    invoke-direct {v0}, Lscala/collection/convert/WrapAsScala$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    invoke-static {p0}, Lscala/collection/convert/WrapAsScala$class;->$init$(Lscala/collection/convert/WrapAsScala;)V

    return-void
.end method


# virtual methods
.method public asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p1, "l"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;)",
            "Lscala/collection/mutable/Buffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->asScalaBuffer(Lscala/collection/convert/WrapAsScala;Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public asScalaIterator(Ljava/util/Iterator;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TA;>;)",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->asScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public propertiesAsScalaMap(Ljava/util/Properties;)Lscala/collection/mutable/Map;
    .locals 1
    .param p1, "p"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lscala/collection/mutable/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->propertiesAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Properties;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method
