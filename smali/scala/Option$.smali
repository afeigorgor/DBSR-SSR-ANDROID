.class public final Lscala/Option$;
.super Ljava/lang/Object;
.source "Option.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Option$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Option$;

    invoke-direct {v0}, Lscala/Option$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Option$;->MODULE$:Lscala/Option$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/Option",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 25
    if-nez p1, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public option2Iterable(Lscala/Option;)Lscala/collection/Iterable;
    .locals 1
    .param p1, "xo"    # Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Option",
            "<TA;>;)",
            "Lscala/collection/Iterable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p1}, Lscala/Option;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method
