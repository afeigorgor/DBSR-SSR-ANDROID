.class public final Lscala/collection/mutable/Iterable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "Iterable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory",
        "<",
        "Lscala/collection/mutable/Iterable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Iterable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Iterable$;

    invoke-direct {v0}, Lscala/collection/mutable/Iterable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Iterable$;->MODULE$:Lscala/collection/mutable/Iterable$;

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
            "Lscala/collection/mutable/Iterable",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-object v0
.end method
