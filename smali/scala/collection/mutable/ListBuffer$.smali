.class public final Lscala/collection/mutable/ListBuffer$;
.super Lscala/collection/generic/SeqFactory;
.source "ListBuffer.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory",
        "<",
        "Lscala/collection/mutable/ListBuffer;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ListBuffer$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ListBuffer$;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    return-void
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TA;",
            "Lscala/collection/mutable/ListBuffer",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lscala/collection/mutable/GrowingBuilder;

    new-instance v1, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v1}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-direct {v0, v1}, Lscala/collection/mutable/GrowingBuilder;-><init>(Lscala/collection/generic/Growable;)V

    return-object v0
.end method
