.class public abstract Lscala/util/matching/Regex$MatchData$class;
.super Ljava/lang/Object;
.source "Regex.scala"


# direct methods
.method public static $init$(Lscala/util/matching/Regex$MatchData;)V
    .locals 0
    .param p0, "$this"    # Lscala/util/matching/Regex$MatchData;

    .prologue
    .line 579
    return-void
.end method

.method public static group(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/util/matching/Regex$MatchData;
    .param p1, "i"    # I

    .prologue
    .line 617
    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->start(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->start(I)I

    move-result v1

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->end(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static matched(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/util/matching/Regex$MatchData;

    .prologue
    .line 610
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->start()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->start()I

    move-result v1

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->end()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 611
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/util/matching/Regex$MatchData;

    .prologue
    .line 665
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->matched()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
