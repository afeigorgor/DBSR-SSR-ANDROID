.class public final Lscala/collection/JavaConversions$;
.super Ljava/lang/Object;
.source "JavaConversions.scala"

# interfaces
.implements Lscala/collection/convert/WrapAsJava;
.implements Lscala/collection/convert/WrapAsScala;


# static fields
.field public static final MODULE$:Lscala/collection/JavaConversions$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/JavaConversions$;

    invoke-direct {v0}, Lscala/collection/JavaConversions$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    invoke-static {p0}, Lscala/collection/convert/WrapAsScala$class;->$init$(Lscala/collection/convert/WrapAsScala;)V

    invoke-static {p0}, Lscala/collection/convert/WrapAsJava$class;->$init$(Lscala/collection/convert/WrapAsJava;)V

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
    .line 52
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->asScalaBuffer(Lscala/collection/convert/WrapAsScala;Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public enumerationAsScalaIterator(Ljava/util/Enumeration;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "i"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TA;>;)",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->enumerationAsScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Enumeration;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public seqAsJavaList(Lscala/collection/Seq;)Ljava/util/List;
    .locals 1
    .param p1, "seq"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<TA;>;)",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->seqAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/Seq;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
