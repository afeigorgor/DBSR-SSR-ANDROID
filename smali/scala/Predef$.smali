.class public final Lscala/Predef$;
.super Lscala/LowPriorityImplicits;
.source "Predef.scala"


# static fields
.field public static final MODULE$:Lscala/Predef$;


# instance fields
.field private final ClassManifest:Lscala/reflect/ClassManifestFactory$;

.field private final Manifest:Lscala/reflect/ManifestFactory$;

.field private final Map:Lscala/collection/immutable/Map$;

.field private final NoManifest:Lscala/reflect/NoManifest$;

.field private final Set:Lscala/collection/immutable/Set$;

.field private final StringCanBuildFrom:Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$Predef$$singleton_$eq$colon$eq:Lscala/Predef$$eq$colon$eq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Predef$$eq$colon$eq",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final singleton_$less$colon$less:Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Predef$$less$colon$less",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$;

    invoke-direct {v0}, Lscala/Predef$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lscala/LowPriorityImplicits;-><init>()V

    sput-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {p0}, Lscala/DeprecatedPredef$class;->$init$(Lscala/Predef$;)V

    .line 94
    sget-object v0, Lscala/package$;->MODULE$:Lscala/package$;

    .line 95
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    .line 101
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    iput-object v0, p0, Lscala/Predef$;->Map:Lscala/collection/immutable/Map$;

    .line 102
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    iput-object v0, p0, Lscala/Predef$;->Set:Lscala/collection/immutable/Set$;

    .line 116
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->ClassManifest()Lscala/reflect/ClassManifestFactory$;

    move-result-object v0

    iput-object v0, p0, Lscala/Predef$;->ClassManifest:Lscala/reflect/ClassManifestFactory$;

    .line 119
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    iput-object v0, p0, Lscala/Predef$;->Manifest:Lscala/reflect/ManifestFactory$;

    .line 122
    sget-object v0, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    iput-object v0, p0, Lscala/Predef$;->NoManifest:Lscala/reflect/NoManifest$;

    .line 303
    new-instance v0, Lscala/Predef$$anon$3;

    invoke-direct {v0}, Lscala/Predef$$anon$3;-><init>()V

    iput-object v0, p0, Lscala/Predef$;->StringCanBuildFrom:Lscala/collection/generic/CanBuildFrom;

    .line 389
    new-instance v0, Lscala/Predef$$anon$1;

    invoke-direct {v0}, Lscala/Predef$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/Predef$;->singleton_$less$colon$less:Lscala/Predef$$less$colon$less;

    .line 404
    new-instance v0, Lscala/Predef$$anon$2;

    invoke-direct {v0}, Lscala/Predef$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/Predef$;->scala$Predef$$singleton_$eq$colon$eq:Lscala/Predef$$eq$colon$eq;

    return-void
.end method


# virtual methods
.method public $conforms()Lscala/Predef$$less$colon$less;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Predef$$less$colon$less",
            "<TA;TA;>;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lscala/Predef$;->singleton_$less$colon$less:Lscala/Predef$$less$colon$less;

    return-object v0
.end method

.method public ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "self"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    .prologue
    .line 252
    return-object p1
.end method

.method public Map()Lscala/collection/immutable/Map$;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lscala/Predef$;->Map:Lscala/collection/immutable/Map$;

    return-object v0
.end method

.method public Set()Lscala/collection/immutable/Set$;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lscala/Predef$;->Set:Lscala/collection/immutable/Set$;

    return-object v0
.end method

.method public any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "self"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    .prologue
    .line 280
    return-object p1
.end method

.method public assert(Z)V
    .locals 2
    .param p1, "assertion"    # Z

    .prologue
    .line 155
    if-eqz p1, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public augmentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 308
    return-object p1
.end method

.method public int2Integer(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public intArrayOps([I)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .param p1, "xs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lscala/collection/mutable/ArrayOps",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    return-object v0
.end method

.method public long2Long(J)Ljava/lang/Long;
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 354
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .param p1, "xs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/ArrayOps",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofRef;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public require(Z)V
    .locals 2
    .param p1, "requirement"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requirement failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
