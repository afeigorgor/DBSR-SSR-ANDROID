.class public final Lscala/collection/mutable/WrappedArray$;
.super Ljava/lang/Object;
.source "WrappedArray.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/WrappedArray$;


# instance fields
.field private final EmptyWrappedArray:Lscala/collection/mutable/WrappedArray$ofRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/WrappedArray$ofRef",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/WrappedArray$;

    invoke-direct {v0}, Lscala/collection/mutable/WrappedArray$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    .line 92
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/collection/mutable/WrappedArray$;->EmptyWrappedArray:Lscala/collection/mutable/WrappedArray$ofRef;

    return-void
.end method

.method private EmptyWrappedArray()Lscala/collection/mutable/WrappedArray$ofRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray$ofRef",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$;->EmptyWrappedArray:Lscala/collection/mutable/WrappedArray$ofRef;

    return-object v0
.end method


# virtual methods
.method public empty()Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray$;->EmptyWrappedArray()Lscala/collection/mutable/WrappedArray$ofRef;

    move-result-object v0

    return-object v0
.end method

.method public make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 100
    .end local p1    # "x":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 102
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    check-cast p1, [I

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofInt;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    goto :goto_0

    .line 104
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [D

    if-eqz v0, :cond_3

    check-cast p1, [D

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofDouble;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofDouble;-><init>([D)V

    goto :goto_0

    .line 105
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    check-cast p1, [J

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofLong;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofLong;-><init>([J)V

    goto :goto_0

    .line 106
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [F

    if-eqz v0, :cond_5

    check-cast p1, [F

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofFloat;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofFloat;-><init>([F)V

    goto :goto_0

    .line 107
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [C

    if-eqz v0, :cond_6

    check-cast p1, [C

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofChar;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofChar;-><init>([C)V

    goto :goto_0

    .line 108
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [B

    if-eqz v0, :cond_7

    check-cast p1, [B

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofByte;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofByte;-><init>([B)V

    goto :goto_0

    .line 109
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    check-cast p1, [S

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofShort;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofShort;-><init>([S)V

    goto :goto_0

    .line 110
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9

    check-cast p1, [Z

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofBoolean;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofBoolean;-><init>([Z)V

    goto :goto_0

    .line 111
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_9
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_a

    check-cast p1, [Lscala/runtime/BoxedUnit;

    .end local p1    # "x":Ljava/lang/Object;
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofUnit;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    goto :goto_0

    .line 100
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
