.class public final Lscala/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/package$;


# instance fields
.field private final $colon$colon:Lscala/collection/immutable/$colon$colon$;

.field private final $colon$plus:Lscala/collection/$colon$plus$;

.field private final $hash$colon$colon:Lscala/collection/immutable/Stream$$hash$colon$colon$;

.field private final $plus$colon:Lscala/collection/$plus$colon$;

.field private final AnyRef:Lscala/Specializable;

.field private final BigDecimal:Lscala/math/BigDecimal$;

.field private final BigInt:Lscala/math/BigInt$;

.field private final Either:Lscala/util/Either$;

.field private final Equiv:Lscala/math/Equiv$;

.field private final Fractional:Lscala/math/Fractional$;

.field private final IndexedSeq:Lscala/collection/IndexedSeq$;

.field private final Integral:Lscala/math/Integral$;

.field private final Iterable:Lscala/collection/Iterable$;

.field private final Iterator:Lscala/collection/Iterator$;

.field private final Left:Lscala/util/Left$;

.field private final List:Lscala/collection/immutable/List$;

.field private final Nil:Lscala/collection/immutable/Nil$;

.field private final Numeric:Lscala/math/Numeric$;

.field private final Ordered:Lscala/math/Ordered$;

.field private final Ordering:Lscala/math/Ordering$;

.field private final Range:Lscala/collection/immutable/Range$;

.field private final Right:Lscala/util/Right$;

.field private final Seq:Lscala/collection/Seq$;

.field private final Stream:Lscala/collection/immutable/Stream$;

.field private final StringBuilder:Lscala/collection/mutable/StringBuilder$;

.field private final Traversable:Lscala/collection/Traversable$;

.field private final Vector:Lscala/collection/immutable/Vector$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/package$;

    invoke-direct {v0}, Lscala/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/package$;->MODULE$:Lscala/package$;

    .line 33
    new-instance v0, Lscala/package$$anon$1;

    invoke-direct {v0}, Lscala/package$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/package$;->AnyRef:Lscala/Specializable;

    .line 40
    sget-object v0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    iput-object v0, p0, Lscala/package$;->Traversable:Lscala/collection/Traversable$;

    .line 43
    sget-object v0, Lscala/collection/Iterable$;->MODULE$:Lscala/collection/Iterable$;

    iput-object v0, p0, Lscala/package$;->Iterable:Lscala/collection/Iterable$;

    .line 46
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    iput-object v0, p0, Lscala/package$;->Seq:Lscala/collection/Seq$;

    .line 49
    sget-object v0, Lscala/collection/IndexedSeq$;->MODULE$:Lscala/collection/IndexedSeq$;

    iput-object v0, p0, Lscala/package$;->IndexedSeq:Lscala/collection/IndexedSeq$;

    .line 52
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    iput-object v0, p0, Lscala/package$;->Iterator:Lscala/collection/Iterator$;

    .line 57
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    iput-object v0, p0, Lscala/package$;->List:Lscala/collection/immutable/List$;

    .line 59
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    iput-object v0, p0, Lscala/package$;->Nil:Lscala/collection/immutable/Nil$;

    .line 62
    sget-object v0, Lscala/collection/immutable/$colon$colon$;->MODULE$:Lscala/collection/immutable/$colon$colon$;

    iput-object v0, p0, Lscala/package$;->$colon$colon:Lscala/collection/immutable/$colon$colon$;

    .line 64
    sget-object v0, Lscala/collection/$plus$colon$;->MODULE$:Lscala/collection/$plus$colon$;

    iput-object v0, p0, Lscala/package$;->$plus$colon:Lscala/collection/$plus$colon$;

    .line 65
    sget-object v0, Lscala/collection/$colon$plus$;->MODULE$:Lscala/collection/$colon$plus$;

    iput-object v0, p0, Lscala/package$;->$colon$plus:Lscala/collection/$colon$plus$;

    .line 68
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iput-object v0, p0, Lscala/package$;->Stream:Lscala/collection/immutable/Stream$;

    .line 69
    sget-object v0, Lscala/collection/immutable/Stream$$hash$colon$colon$;->MODULE$:Lscala/collection/immutable/Stream$$hash$colon$colon$;

    iput-object v0, p0, Lscala/package$;->$hash$colon$colon:Lscala/collection/immutable/Stream$$hash$colon$colon$;

    .line 72
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    iput-object v0, p0, Lscala/package$;->Vector:Lscala/collection/immutable/Vector$;

    .line 75
    sget-object v0, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    iput-object v0, p0, Lscala/package$;->StringBuilder:Lscala/collection/mutable/StringBuilder$;

    .line 78
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    iput-object v0, p0, Lscala/package$;->Range:Lscala/collection/immutable/Range$;

    .line 83
    sget-object v0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    iput-object v0, p0, Lscala/package$;->BigDecimal:Lscala/math/BigDecimal$;

    .line 86
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    iput-object v0, p0, Lscala/package$;->BigInt:Lscala/math/BigInt$;

    .line 89
    sget-object v0, Lscala/math/Equiv$;->MODULE$:Lscala/math/Equiv$;

    iput-object v0, p0, Lscala/package$;->Equiv:Lscala/math/Equiv$;

    .line 92
    sget-object v0, Lscala/math/Fractional$;->MODULE$:Lscala/math/Fractional$;

    iput-object v0, p0, Lscala/package$;->Fractional:Lscala/math/Fractional$;

    .line 95
    sget-object v0, Lscala/math/Integral$;->MODULE$:Lscala/math/Integral$;

    iput-object v0, p0, Lscala/package$;->Integral:Lscala/math/Integral$;

    .line 98
    sget-object v0, Lscala/math/Numeric$;->MODULE$:Lscala/math/Numeric$;

    iput-object v0, p0, Lscala/package$;->Numeric:Lscala/math/Numeric$;

    .line 101
    sget-object v0, Lscala/math/Ordered$;->MODULE$:Lscala/math/Ordered$;

    iput-object v0, p0, Lscala/package$;->Ordered:Lscala/math/Ordered$;

    .line 104
    sget-object v0, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    iput-object v0, p0, Lscala/package$;->Ordering:Lscala/math/Ordering$;

    .line 110
    sget-object v0, Lscala/util/Either$;->MODULE$:Lscala/util/Either$;

    iput-object v0, p0, Lscala/package$;->Either:Lscala/util/Either$;

    .line 113
    sget-object v0, Lscala/util/Left$;->MODULE$:Lscala/util/Left$;

    iput-object v0, p0, Lscala/package$;->Left:Lscala/util/Left$;

    .line 116
    sget-object v0, Lscala/util/Right$;->MODULE$:Lscala/util/Right$;

    iput-object v0, p0, Lscala/package$;->Right:Lscala/util/Right$;

    return-void
.end method
