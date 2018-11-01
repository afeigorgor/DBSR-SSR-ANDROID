.class public Lscala/StringContext$InvalidEscapeException;
.super Ljava/lang/IllegalArgumentException;
.source "StringContext.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/StringContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidEscapeException"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iput p2, p0, Lscala/StringContext$InvalidEscapeException;->index:I

    .line 179
    new-instance v3, Lscala/StringContext;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "invalid escape "

    aput-object v5, v0, v2

    .line 183
    const-string v5, " index "

    aput-object v5, v0, v1

    const-string v5, " in \""

    aput-object v5, v0, v10

    const-string v5, "\". Use \\\\\\\\ for literal \\\\."

    aput-object v5, v0, v8

    check-cast v0, [Ljava/lang/Object;

    .line 179
    invoke-virtual {v4, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {v3, v0}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v5, v8, [Ljava/lang/Object;

    .line 180
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Lscala/Predef$;->require(Z)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "at terminal"

    :goto_1
    aput-object v0, v5, v2

    .line 183
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    aput-object p1, v5, v10

    .line 179
    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v3, v0}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    new-instance v6, Lscala/StringContext;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "\'\\\\"

    aput-object v8, v0, v2

    const-string v8, "\' not one of "

    aput-object v8, v0, v1

    const-string v8, " at"

    aput-object v8, v0, v10

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v7, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {v6, v0}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v7, v10, [Ljava/lang/Object;

    sget-object v8, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v9, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v9, p2, 0x1

    invoke-virtual {v8, p1, v9}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v8

    invoke-static {v8}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "[\\b, \\t, \\n, \\f, \\r, \\\\, \\\", \\\']"

    aput-object v8, v7, v1

    invoke-virtual {v0, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v6, v0}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
