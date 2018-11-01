.class public final Lscala/reflect/ManifestFactory$;
.super Ljava/lang/Object;
.source "Manifest.scala"


# static fields
.field public static final MODULE$:Lscala/reflect/ManifestFactory$;


# instance fields
.field private final Any:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyRef:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyVal:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Boolean:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Byte:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Char:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Double:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Float:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Int:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Long:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Nothing:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final Null:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final Object:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Short:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Unit:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final scala$reflect$ManifestFactory$$NothingTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final scala$reflect$ManifestFactory$$NullTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final scala$reflect$ManifestFactory$$ObjectTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/ManifestFactory$;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    .line 91
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$6;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$6;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Byte:Lscala/reflect/AnyValManifest;

    .line 99
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$7;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$7;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Short:Lscala/reflect/AnyValManifest;

    .line 107
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$8;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$8;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Char:Lscala/reflect/AnyValManifest;

    .line 115
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$9;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$9;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Int:Lscala/reflect/AnyValManifest;

    .line 123
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$10;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$10;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Long:Lscala/reflect/AnyValManifest;

    .line 131
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$11;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$11;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Float:Lscala/reflect/AnyValManifest;

    .line 139
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$12;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$12;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Double:Lscala/reflect/AnyValManifest;

    .line 147
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$13;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$13;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Boolean:Lscala/reflect/AnyValManifest;

    .line 155
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$14;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$14;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Unit:Lscala/reflect/AnyValManifest;

    .line 166
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$ObjectTYPE:Ljava/lang/Class;

    .line 167
    const-class v0, Lscala/runtime/Nothing$;

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NothingTYPE:Ljava/lang/Class;

    .line 168
    const-class v0, Lscala/runtime/Null$;

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NullTYPE:Ljava/lang/Class;

    .line 170
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$1;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Any:Lscala/reflect/Manifest;

    .line 176
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$2;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Object:Lscala/reflect/Manifest;

    .line 182
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Object()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyRef:Lscala/reflect/Manifest;

    .line 184
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$3;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$3;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyVal:Lscala/reflect/Manifest;

    .line 190
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$4;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$4;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Null:Lscala/reflect/Manifest;

    .line 197
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$5;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$5;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Nothing:Lscala/reflect/Manifest;

    return-void
.end method


# virtual methods
.method public Any()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Any:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public AnyRef()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyRef:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public AnyVal()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyVal:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Boolean()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Boolean:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Byte()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Byte:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Char()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Char:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Double()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Double:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Float()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Float:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Int()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Int:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Long()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Long:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Nothing()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Nothing:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Null()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest",
            "<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Null:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Object()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Object:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Short()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Short:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Unit()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Unit:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public scala$reflect$ManifestFactory$$NothingTYPE()Ljava/lang/Class;
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
    .line 167
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NothingTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public scala$reflect$ManifestFactory$$NullTYPE()Ljava/lang/Class;
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
    .line 168
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NullTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public scala$reflect$ManifestFactory$$ObjectTYPE()Ljava/lang/Class;
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
    .line 166
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$ObjectTYPE:Ljava/lang/Class;

    return-object v0
.end method
