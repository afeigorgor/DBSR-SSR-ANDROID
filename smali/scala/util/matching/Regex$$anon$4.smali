.class public final Lscala/util/matching/Regex$$anon$4;
.super Ljava/lang/Object;
.source "Regex.scala"

# interfaces
.implements Lscala/collection/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex;->findAllMatchIn(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/Iterator",
        "<",
        "Lscala/util/matching/Regex$Match;",
        ">;"
    }
.end annotation


# instance fields
.field private final matchIterator$1:Lscala/util/matching/Regex$MatchIterator;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex;Lscala/util/matching/Regex$MatchIterator;)V
    .locals 0
    .param p1, "$outer"    # Lscala/util/matching/Regex;
    .param p2, "matchIterator$1"    # Lscala/util/matching/Regex$MatchIterator;

    .prologue
    .line 371
    iput-object p2, p0, Lscala/util/matching/Regex$$anon$4;->matchIterator$1:Lscala/util/matching/Regex$MatchIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    return-void
.end method


# virtual methods
.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;",
            "Lscala/util/matching/Regex$Match;",
            "TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 1
    .param p1, "pf"    # Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->copyToArray(Lscala/collection/Iterator;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .param p1, "dest"    # Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public drop(I)Lscala/collection/Iterator;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->exists(Lscala/collection/Iterator;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public filter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;",
            "Lscala/util/matching/Regex$Match;",
            "TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forall(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->forall(Lscala/collection/Iterator;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "TU;>;)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->foreach(Lscala/collection/Iterator;Lscala/Function1;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lscala/util/matching/Regex$$anon$4;->matchIterator$1:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v0}, Lscala/util/matching/Regex$MatchIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "TB;>;)",
            "Lscala/collection/Iterator",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->map(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lscala/util/matching/Regex$$anon$4;->next()Lscala/util/matching/Regex$Match;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/util/matching/Regex$Match;
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lscala/util/matching/Regex$$anon$4;->matchIterator$1:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v0}, Lscala/util/matching/Regex$MatchIterator;->next()Ljava/lang/String;

    .line 375
    new-instance v0, Lscala/util/matching/Regex$Match;

    iget-object v1, p0, Lscala/util/matching/Regex$$anon$4;->matchIterator$1:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v1}, Lscala/util/matching/Regex$MatchIterator;->source()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lscala/util/matching/Regex$$anon$4;->matchIterator$1:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v2}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v2

    iget-object v3, p0, Lscala/util/matching/Regex$$anon$4;->matchIterator$1:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v3}, Lscala/util/matching/Regex$MatchIterator;->groupNames()Lscala/collection/Seq;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/matching/Regex$Match;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Lscala/collection/Seq;)V

    invoke-virtual {v0}, Lscala/util/matching/Regex$Match;->force()Lscala/util/matching/Regex$Match;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;",
            "Lscala/util/matching/Regex$Match;",
            "TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;",
            "Lscala/util/matching/Regex$Match;",
            "TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TA1;TA1;TA1;>;)",
            "Lscala/Option",
            "<TA1;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lscala/util/matching/Regex$$anon$4;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1
    .param p1, "num"    # Lscala/math/Numeric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "cbf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/runtime/Nothing$;",
            "Lscala/util/matching/Regex$Match;",
            "TCol;>;)TCol;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->to(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->toIterator(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "Lscala/Tuple2",
            "<TT;TU;>;>;)",
            "Lscala/collection/immutable/Map",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/Iterator$class;->toTraversable(Lscala/collection/Iterator;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/util/matching/Regex$Match;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->withFilter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
