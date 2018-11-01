.class public abstract Lcom/github/shadowsocks/preferences/SummaryPreference$class;
.super Ljava/lang/Object;
.source "SummaryPreference.scala"


# direct methods
.method public static $init$(Lcom/github/shadowsocks/preferences/SummaryPreference;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/shadowsocks/preferences/SummaryPreference;

    .prologue
    .line 11
    return-void
.end method

.method public static getSummary(Lcom/github/shadowsocks/preferences/SummaryPreference;)Ljava/lang/String;
    .locals 6
    .param p0, "$this"    # Lcom/github/shadowsocks/preferences/SummaryPreference;

    .prologue
    .line 20
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lcom/github/shadowsocks/preferences/SummaryPreference;->com$github$shadowsocks$preferences$SummaryPreference$$super$getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/github/shadowsocks/preferences/SummaryPreference;->getSummaryValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
