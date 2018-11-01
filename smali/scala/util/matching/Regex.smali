.class public Lscala/util/matching/Regex;
.super Ljava/lang/Object;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/util/matching/Regex$Match;,
        Lscala/util/matching/Regex$MatchData;,
        Lscala/util/matching/Regex$MatchIterator;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;

.field public final scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lscala/collection/Seq;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "groupNames"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lscala/util/matching/Regex;-><init>(Ljava/util/regex/Pattern;Lscala/collection/Seq;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;Lscala/collection/Seq;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "groupNames"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lscala/util/matching/Regex;->pattern:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findAllIn(Ljava/lang/CharSequence;)Lscala/util/matching/Regex$MatchIterator;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 360
    new-instance v0, Lscala/util/matching/Regex$MatchIterator;

    iget-object v1, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v0, p1, p0, v1}, Lscala/util/matching/Regex$MatchIterator;-><init>(Ljava/lang/CharSequence;Lscala/util/matching/Regex;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public findAllMatchIn(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->findAllIn(Ljava/lang/CharSequence;)Lscala/util/matching/Regex$MatchIterator;

    move-result-object v0

    .line 371
    .local v0, "matchIterator":Lscala/util/matching/Regex$MatchIterator;
    new-instance v1, Lscala/util/matching/Regex$$anon$4;

    invoke-direct {v1, p0, v0}, Lscala/util/matching/Regex$$anon$4;-><init>(Lscala/util/matching/Regex;Lscala/util/matching/Regex$MatchIterator;)V

    return-object v1
.end method

.method public findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/Option",
            "<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 404
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/Some;

    new-instance v2, Lscala/util/matching/Regex$Match;

    iget-object v3, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v2, p1, v0, v3}, Lscala/util/matching/Regex$Match;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Lscala/collection/Seq;)V

    invoke-direct {v1, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    .line 402
    :goto_0
    return-object v1

    .line 404
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lscala/util/matching/Regex;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public regex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lscala/util/matching/Regex;->regex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
