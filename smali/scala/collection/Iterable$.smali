.class public final Lscala/collection/Iterable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "Iterable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory",
        "<",
        "Lscala/collection/Iterable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/Iterable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Iterable$;

    invoke-direct {v0}, Lscala/collection/Iterable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/Iterable$;->MODULE$:Lscala/collection/Iterable$;

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
            "Lscala/collection/Iterable",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lscala/collection/immutable/Iterable$;->MODULE$:Lscala/collection/immutable/Iterable$;

    invoke-virtual {v0}, Lscala/collection/immutable/Iterable$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
