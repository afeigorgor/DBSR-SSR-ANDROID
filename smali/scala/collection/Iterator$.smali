.class public final Lscala/collection/Iterator$;
.super Ljava/lang/Object;
.source "Iterator.scala"


# static fields
.field public static final MODULE$:Lscala/collection/Iterator$;


# instance fields
.field private final empty:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Iterator$;

    invoke-direct {v0}, Lscala/collection/Iterator$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    .line 37
    new-instance v0, Lscala/collection/Iterator$$anon$2;

    invoke-direct {v0}, Lscala/collection/Iterator$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/collection/Iterator$;->empty:Lscala/collection/Iterator;

    return-void
.end method


# virtual methods
.method public IteratorCanBuildFrom()Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/TraversableOnce$BufferedCanBuildFrom",
            "<TA;",
            "Lscala/collection/Iterator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lscala/collection/Iterator$$anon$24;

    invoke-direct {v0}, Lscala/collection/Iterator$$anon$24;-><init>()V

    return-object v0
.end method

.method public apply(Lscala/collection/Seq;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<TA;>;)",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p1}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lscala/collection/Iterator$;->empty:Lscala/collection/Iterator;

    return-object v0
.end method
