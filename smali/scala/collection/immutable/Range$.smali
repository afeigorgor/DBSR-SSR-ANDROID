.class public final Lscala/collection/immutable/Range$;
.super Ljava/lang/Object;
.source "Range.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$;


# instance fields
.field private final MAX_PRINT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    .line 397
    const/16 v0, 0x200

    iput v0, p0, Lscala/collection/immutable/Range$;->MAX_PRINT:I

    return-void
.end method


# virtual methods
.method public MAX_PRINT()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lscala/collection/immutable/Range$;->MAX_PRINT:I

    return v0
.end method

.method public apply(II)Lscala/collection/immutable/Range;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 443
    new-instance v0, Lscala/collection/immutable/Range;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method

.method public inclusive(II)Lscala/collection/immutable/Range$Inclusive;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 452
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    return-object v0
.end method
