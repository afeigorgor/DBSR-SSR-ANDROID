.class public final Lscala/collection/immutable/StringOps$;
.super Ljava/lang/Object;
.source "StringOps.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/StringOps$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/StringOps$;

    invoke-direct {v0}, Lscala/collection/immutable/StringOps$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    return-void
.end method


# virtual methods
.method public final apply$extension(Ljava/lang/String;I)C
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final equals$extension(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "$this"    # Ljava/lang/String;
    .param p2, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    instance-of v2, p2, Lscala/collection/immutable/StringOps;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    if-nez p2, :cond_2

    const/4 v2, 0x0

    .end local p2    # "x$1":Ljava/lang/Object;
    :goto_1
    if-nez p1, :cond_3

    if-eqz v2, :cond_4

    :cond_0
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    :goto_3
    return v0

    .restart local p2    # "x$1":Ljava/lang/Object;
    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    check-cast p2, Lscala/collection/immutable/StringOps;

    .end local p2    # "x$1":Ljava/lang/Object;
    invoke-virtual {p2}, Lscala/collection/immutable/StringOps;->repr()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public final hashCode$extension(Ljava/lang/String;)I
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final length$extension(Ljava/lang/String;)I
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final newBuilder$extension(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder$;->newBuilder()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final seq$extension(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final slice$extension(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "$this"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "until"    # I

    .prologue
    .line 39
    if-gez p2, :cond_1

    const/4 v1, 0x0

    .line 40
    .local v1, "start":I
    :goto_0
    if-le p3, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 41
    :cond_0
    const-string v2, ""

    .line 44
    :goto_1
    return-object v2

    .end local v1    # "start":I
    :cond_1
    move v1, p2

    .line 39
    goto :goto_0

    .line 43
    .restart local v1    # "start":I
    :cond_2
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringOps$;->length$extension(Ljava/lang/String;)I

    move-result v2

    if-le p3, v2, :cond_3

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringOps$;->length$extension(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "end":I
    :goto_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v0    # "end":I
    :cond_3
    move v0, p3

    .line 43
    goto :goto_2
.end method

.method public final thisCollection$extension(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toCollection$extension(Ljava/lang/String;Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 1
    .param p1, "$this"    # Ljava/lang/String;
    .param p2, "repr"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p2}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString$extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "$this"    # Ljava/lang/String;

    .prologue
    return-object p1
.end method
