.class public final Lscala/collection/immutable/Iterable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "Iterable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory",
        "<",
        "Lscala/collection/immutable/Iterable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Iterable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Iterable$;

    invoke-direct {v0}, Lscala/collection/immutable/Iterable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Iterable$;->MODULE$:Lscala/collection/immutable/Iterable$;

    return-void
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TA;",
            "Lscala/collection/immutable/Iterable",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    return-object v0
.end method
