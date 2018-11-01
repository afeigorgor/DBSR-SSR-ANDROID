.class public final Lscala/collection/mutable/FlatHashTable$;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/FlatHashTable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/FlatHashTable$;

    invoke-direct {v0}, Lscala/collection/mutable/FlatHashTable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    return-void
.end method


# virtual methods
.method public defaultLoadFactor()I
    .locals 1

    .prologue
    .line 393
    const/16 v0, 0x1c2

    return v0
.end method

.method public newThreshold(II)I
    .locals 4
    .param p1, "_loadFactor"    # I
    .param p2, "size"    # I

    .prologue
    .line 400
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 401
    int-to-long v0, p2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "assertion failed: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "loadFactor too large; must be < 0.5"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
