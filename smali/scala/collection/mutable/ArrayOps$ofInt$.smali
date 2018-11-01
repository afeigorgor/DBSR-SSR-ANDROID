.class public Lscala/collection/mutable/ArrayOps$ofInt$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofInt$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofInt$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofInt$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofInt$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofInt$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofInt$;

    return-void
.end method


# virtual methods
.method public final apply$extension([II)I
    .locals 1
    .param p1, "$this"    # [I
    .param p2, "index"    # I

    .prologue
    .line 241
    aget v0, p1, p2

    return v0
.end method

.method public final equals$extension([ILjava/lang/Object;)Z
    .locals 3
    .param p1, "$this"    # [I
    .param p2, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    instance-of v2, p2, Lscala/collection/mutable/ArrayOps$ofInt;

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    const/4 v2, 0x0

    .end local p2    # "x$1":Ljava/lang/Object;
    :goto_1
    if-ne p1, v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    :goto_3
    return v0

    .restart local p2    # "x$1":Ljava/lang/Object;
    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofInt;

    .end local p2    # "x$1":Ljava/lang/Object;
    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofInt;->repr()[I

    move-result-object v2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public final hashCode$extension([I)I
    .locals 1
    .param p1, "$this"    # [I

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final length$extension([I)I
    .locals 1
    .param p1, "$this"    # [I

    .prologue
    .line 240
    array-length v0, p1

    return v0
.end method

.method public final newBuilder$extension([I)Lscala/collection/mutable/ArrayBuilder$ofInt;
    .locals 1
    .param p1, "$this"    # [I

    .prologue
    .line 238
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofInt;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;-><init>()V

    return-object v0
.end method

.method public final thisCollection$extension([I)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "$this"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lscala/collection/mutable/WrappedArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofInt;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    return-object v0
.end method

.method public final toCollection$extension([I[I)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "$this"    # [I
    .param p2, "repr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Lscala/collection/mutable/WrappedArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofInt;

    invoke-direct {v0, p2}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    return-object v0
.end method
