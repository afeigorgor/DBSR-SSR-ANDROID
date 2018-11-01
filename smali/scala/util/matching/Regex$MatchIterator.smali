.class public Lscala/util/matching/Regex$MatchIterator;
.super Lscala/collection/AbstractIterator;
.source "Regex.scala"

# interfaces
.implements Lscala/util/matching/Regex$MatchData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/matching/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/util/matching/Regex$MatchData;"
    }
.end annotation


# instance fields
.field private final groupNames:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final matcher:Ljava/util/regex/Matcher;

.field private nextSeen:Z

.field private final regex:Lscala/util/matching/Regex;

.field private final source:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lscala/util/matching/Regex;Lscala/collection/Seq;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "regex"    # Lscala/util/matching/Regex;
    .param p3, "groupNames"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lscala/util/matching/Regex;",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    iput-object p1, p0, Lscala/util/matching/Regex$MatchIterator;->source:Ljava/lang/CharSequence;

    iput-object p2, p0, Lscala/util/matching/Regex$MatchIterator;->regex:Lscala/util/matching/Regex;

    iput-object p3, p0, Lscala/util/matching/Regex$MatchIterator;->groupNames:Lscala/collection/Seq;

    .line 740
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->$init$(Lscala/util/matching/Regex$MatchData;)V

    .line 742
    invoke-virtual {p2}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->matcher:Ljava/util/regex/Matcher;

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscala/util/matching/Regex$MatchIterator;->nextSeen:Z

    return-void
.end method

.method private nextSeen()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lscala/util/matching/Regex$MatchIterator;->nextSeen:Z

    return v0
.end method

.method private nextSeen_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Lscala/util/matching/Regex$MatchIterator;->nextSeen:Z

    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 770
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public groupNames()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->groupNames:Lscala/collection/Seq;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    invoke-direct {p0, v0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen_$eq(Z)V

    .line 748
    :cond_0
    invoke-direct {p0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen()Z

    move-result v0

    return v0
.end method

.method public matched()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->matched(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matcher()Ljava/util/regex/Matcher;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->matcher:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen_$eq(Z)V

    .line 755
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 753
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public source()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->source:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 764
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
