.class public final Lscala/runtime/RichInt$;
.super Ljava/lang/Object;
.source "RichInt.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichInt$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichInt$;

    invoke-direct {v0}, Lscala/runtime/RichInt$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    return-void
.end method


# virtual methods
.method public final max$extension(II)I
    .locals 1
    .param p1, "$this"    # I
    .param p2, "that"    # I

    .prologue
    .line 36
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->max(II)I

    move-result v0

    return v0
.end method

.method public final min$extension(II)I
    .locals 1
    .param p1, "$this"    # I
    .param p2, "that"    # I

    .prologue
    .line 37
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(II)I

    move-result v0

    return v0
.end method

.method public final to$extension0(II)Lscala/collection/immutable/Range$Inclusive;
    .locals 1
    .param p1, "$this"    # I
    .param p2, "end"    # I

    .prologue
    .line 71
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/Range$;->inclusive(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v0

    return-object v0
.end method

.method public final until$extension0(II)Lscala/collection/immutable/Range;
    .locals 1
    .param p1, "$this"    # I
    .param p2, "end"    # I

    .prologue
    .line 55
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/Range$;->apply(II)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method
