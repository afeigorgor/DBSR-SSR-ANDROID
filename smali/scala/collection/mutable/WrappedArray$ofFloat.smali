.class public final Lscala/collection/mutable/WrappedArray$ofFloat;
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
    name = "ofFloat"
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
.field private final array:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0
    .param p1, "array"    # [F

    .prologue
    .line 166
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofFloat;->array:[F

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofFloat;->apply$mcFI$sp(I)F

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofFloat;->apply(I)F

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 166
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/WrappedArray$ofFloat;->apply(I)F

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcFI$sp(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofFloat;->array()[F

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofFloat;->array()[F

    move-result-object v0

    return-object v0
.end method

.method public array()[F
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofFloat;->array:[F

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
    .line 167
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofFloat;->array()[F

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public update(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "elem"    # F

    .prologue
    .line 170
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofFloat;->array()[F

    move-result-object v0

    aput p2, v0, p1

    return-void
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "elem"    # Ljava/lang/Object;

    .prologue
    .line 166
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/WrappedArray$ofFloat;->update(IF)V

    return-void
.end method
