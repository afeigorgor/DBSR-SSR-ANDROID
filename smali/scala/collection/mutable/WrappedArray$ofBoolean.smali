.class public final Lscala/collection/mutable/WrappedArray$ofBoolean;
.super Lscala/collection/mutable/WrappedArray;
.source "WrappedArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/WrappedArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ofBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/WrappedArray",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final array:[Z


# direct methods
.method public constructor <init>([Z)V
    .locals 0
    .param p1, "array"    # [Z

    .prologue
    .line 180
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofBoolean;->array:[Z

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofBoolean;->apply(I)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 180
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/WrappedArray$ofBoolean;->apply(I)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public apply(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofBoolean;->apply$mcZI$sp(I)Z

    move-result v0

    return v0
.end method

.method public apply$mcZI$sp(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofBoolean;->array()[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    return v0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofBoolean;->array()[Z

    move-result-object v0

    return-object v0
.end method

.method public array()[Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofBoolean;->array:[Z

    return-object v0
.end method

.method public elemTag()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofBoolean;->array()[Z

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "elem"    # Ljava/lang/Object;

    .prologue
    .line 180
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/WrappedArray$ofBoolean;->update(IZ)V

    return-void
.end method

.method public update(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "elem"    # Z

    .prologue
    .line 184
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofBoolean;->array()[Z

    move-result-object v0

    aput-boolean p2, v0, p1

    return-void
.end method
