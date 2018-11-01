.class public final Lscala/reflect/ClassTag$;
.super Ljava/lang/Object;
.source "ClassTag.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/reflect/ClassTag$;


# instance fields
.field private final Any:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyRef:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyVal:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Boolean:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Byte:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Char:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Double:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Float:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Int:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Long:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Nothing:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final NothingTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final Null:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final NullTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final Object:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ObjectTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Short:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Unit:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/ClassTag$;

    invoke-direct {v0}, Lscala/reflect/ClassTag$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    .line 118
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lscala/reflect/ClassTag$;->ObjectTYPE:Ljava/lang/Class;

    .line 119
    const-class v0, Lscala/runtime/Nothing$;

    iput-object v0, p0, Lscala/reflect/ClassTag$;->NothingTYPE:Ljava/lang/Class;

    .line 120
    const-class v0, Lscala/runtime/Null$;

    iput-object v0, p0, Lscala/reflect/ClassTag$;->NullTYPE:Ljava/lang/Class;

    .line 122
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Byte()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Byte:Lscala/reflect/ClassTag;

    .line 123
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Short()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Short:Lscala/reflect/ClassTag;

    .line 124
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Char()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Char:Lscala/reflect/ClassTag;

    .line 125
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Int()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Int:Lscala/reflect/ClassTag;

    .line 126
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Long()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Long:Lscala/reflect/ClassTag;

    .line 127
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Float()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Float:Lscala/reflect/ClassTag;

    .line 128
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Double()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Double:Lscala/reflect/ClassTag;

    .line 129
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Boolean()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Boolean:Lscala/reflect/ClassTag;

    .line 130
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Unit()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Unit:Lscala/reflect/ClassTag;

    .line 131
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Any()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Any:Lscala/reflect/ClassTag;

    .line 132
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Object()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Object:Lscala/reflect/ClassTag;

    .line 133
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->AnyVal:Lscala/reflect/ClassTag;

    .line 134
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyRef()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->AnyRef:Lscala/reflect/ClassTag;

    .line 135
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Nothing()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Nothing:Lscala/reflect/ClassTag;

    .line 136
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Null()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Null:Lscala/reflect/ClassTag;

    return-void
.end method

.method private NothingTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lscala/reflect/ClassTag$;->NothingTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private NullTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lscala/reflect/ClassTag$;->NullTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private ObjectTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lscala/reflect/ClassTag$;->ObjectTYPE:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public AnyRef()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lscala/reflect/ClassTag$;->AnyRef:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Boolean()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Boolean:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Byte()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Byte:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Char()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Char:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Double()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Double:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Float()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Float:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Int()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Int:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Long()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Long:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Nothing()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Nothing:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Null()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Null:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Object()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Object:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Short()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Short:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Unit()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Unit:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;
    .locals 1
    .param p1, "runtimeClass1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lscala/reflect/ClassTag",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_c

    if-eqz p1, :cond_d

    .line 141
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_e

    if-eqz p1, :cond_f

    .line 142
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_10

    if-eqz p1, :cond_11

    .line 143
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_12

    if-eqz p1, :cond_13

    .line 144
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_14

    if-eqz p1, :cond_15

    .line 145
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_16

    if-eqz p1, :cond_17

    .line 146
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_18

    if-eqz p1, :cond_19

    .line 147
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1b

    .line 148
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1d

    .line 149
    :cond_8
    invoke-direct {p0}, Lscala/reflect/ClassTag$;->ObjectTYPE()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1f

    .line 150
    :cond_9
    invoke-direct {p0}, Lscala/reflect/ClassTag$;->NothingTYPE()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_20

    if-eqz p1, :cond_21

    .line 151
    :cond_a
    invoke-direct {p0}, Lscala/reflect/ClassTag$;->NullTYPE()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_22

    if-eqz p1, :cond_23

    .line 152
    :cond_b
    new-instance v0, Lscala/reflect/ClassTag$$anon$1;

    invoke-direct {v0, p1}, Lscala/reflect/ClassTag$$anon$1;-><init>(Ljava/lang/Class;)V

    .line 139
    :goto_0
    return-object v0

    .line 140
    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_e
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_f
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_10
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_11
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_13
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_14
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_15
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_16
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_17
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_18
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_19
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_1a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1b
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1d
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Unit()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1e
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1f
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Object()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_20
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_21
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Nothing()Lscala/reflect/ClassTag;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_22
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_23
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Null()Lscala/reflect/ClassTag;

    move-result-object v0

    goto/16 :goto_0
.end method
