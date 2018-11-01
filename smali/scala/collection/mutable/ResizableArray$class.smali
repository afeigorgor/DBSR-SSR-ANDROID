.class public abstract Lscala/collection/mutable/ResizableArray$class;
.super Ljava/lang/Object;
.source "ResizableArray.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ResizableArray;)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;

    .prologue
    .line 32
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->initialSize()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/mutable/ResizableArray;->array_$eq([Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/mutable/ResizableArray;->size0_$eq(I)V

    return-void
.end method

.method public static apply(Lscala/collection/mutable/ResizableArray;I)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "idx"    # I

    .prologue
    .line 43
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static copy(Lscala/collection/mutable/ResizableArray;III)V
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "m"    # I
    .param p2, "n"    # I
    .param p3, "len"    # I

    .prologue
    .line 120
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/mutable/ResizableArray;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 76
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v1, p3, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v1

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v5

    .line 77
    .local v5, "len1":I
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static ensureSize(Lscala/collection/mutable/ResizableArray;I)V
    .locals 12
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "n"    # I

    .prologue
    const-wide/16 v10, 0x2

    const/4 v8, 0x0

    .line 95
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    int-to-long v0, v3

    .line 96
    .local v0, "arrayLength":J
    int-to-long v6, p1

    cmp-long v3, v6, v0

    if-lez v3, :cond_2

    .line 97
    mul-long v4, v0, v10

    .line 98
    .local v4, "newSize":J
    :goto_0
    int-to-long v6, p1

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 99
    mul-long/2addr v4, v10

    goto :goto_0

    .line 101
    :cond_0
    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    .line 103
    :cond_1
    long-to-int v3, v4

    new-array v2, v3, [Ljava/lang/Object;

    .line 104
    .local v2, "newArray":[Ljava/lang/Object;
    sget-object v3, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v6

    invoke-static {v3, v8, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-interface {p0, v2}, Lscala/collection/mutable/ResizableArray;->array_$eq([Ljava/lang/Object;)V

    .line 93
    .end local v2    # "newArray":[Ljava/lang/Object;
    .end local v4    # "newSize":J
    :cond_2
    return-void
.end method

.method public static foreach(Lscala/collection/mutable/ResizableArray;Lscala/Function1;)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 57
    .local v0, "i":I
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size()I

    move-result v1

    .line 58
    .local v1, "top":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static length(Lscala/collection/mutable/ResizableArray;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;

    .prologue
    .line 40
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    return v0
.end method

.method public static reduceToSize(Lscala/collection/mutable/ResizableArray;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "sz"    # I

    .prologue
    .line 85
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lscala/Predef$;->require(Z)V

    .line 86
    :goto_1
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 87
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lscala/collection/mutable/ResizableArray;->size0_$eq(I)V

    .line 88
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public static update(Lscala/collection/mutable/ResizableArray;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/ResizableArray;
    .param p1, "idx"    # I
    .param p2, "elem"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method
