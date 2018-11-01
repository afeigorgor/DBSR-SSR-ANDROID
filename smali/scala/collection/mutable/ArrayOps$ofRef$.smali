.class public Lscala/collection/mutable/ArrayOps$ofRef$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofRef$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofRef$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    return-void
.end method


# virtual methods
.method public final apply$extension([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "$this"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 193
    aget-object v0, p1, p2

    return-object v0
.end method

.method public final equals$extension([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "$this"    # [Ljava/lang/Object;
    .param p2, "x$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    instance-of v2, p2, Lscala/collection/mutable/ArrayOps$ofRef;

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
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofRef;

    .end local p2    # "x$1":Ljava/lang/Object;
    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public final hashCode$extension([Ljava/lang/Object;)I
    .locals 1
    .param p1, "$this"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final length$extension([Ljava/lang/Object;)I
    .locals 1
    .param p1, "$this"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .line 192
    array-length v0, p1

    return v0
.end method

.method public final newBuilder$extension([Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;
    .locals 4
    .param p1, "$this"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/ArrayBuilder$ofRef",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofRef;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public final thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "$this"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "$this"    # [Ljava/lang/Object;
    .param p2, "repr"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {v0, p2}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
