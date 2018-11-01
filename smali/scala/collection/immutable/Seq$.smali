.class public final Lscala/collection/immutable/Seq$;
.super Lscala/collection/generic/SeqFactory;
.source "Seq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory",
        "<",
        "Lscala/collection/immutable/Seq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Seq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Seq$;

    invoke-direct {v0}, Lscala/collection/immutable/Seq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

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
            "Lscala/collection/immutable/Seq",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    return-object v0
.end method
