.class public abstract Lscala/collection/convert/WrapAsJava$class;
.super Ljava/lang/Object;
.source "WrapAsJava.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/WrapAsJava;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/convert/WrapAsJava;

    .prologue
    .line 16
    return-void
.end method

.method public static seqAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/Seq;)Ljava/util/List;
    .locals 2
    .param p0, "$this"    # Lscala/collection/convert/WrapAsJava;
    .param p1, "seq"    # Lscala/collection/Seq;

    .prologue
    .line 139
    instance-of v0, p1, Lscala/collection/convert/Wrappers$JListWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JListWrapper;

    .end local p1    # "seq":Lscala/collection/Seq;
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 140
    .restart local p1    # "seq":Lscala/collection/Seq;
    :cond_0
    new-instance v0, Lscala/collection/convert/Wrappers$SeqWrapper;

    sget-object v1, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$SeqWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Seq;)V

    goto :goto_0
.end method
