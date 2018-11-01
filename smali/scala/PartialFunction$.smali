.class public final Lscala/PartialFunction$;
.super Ljava/lang/Object;
.source "PartialFunction.scala"


# static fields
.field public static final MODULE$:Lscala/PartialFunction$;


# instance fields
.field private final empty_pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Object;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$PartialFunction$$constFalse:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction",
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

    new-instance v0, Lscala/PartialFunction$;

    invoke-direct {v0}, Lscala/PartialFunction$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    .line 215
    new-instance v0, Lscala/PartialFunction$$anonfun$1;

    invoke-direct {v0}, Lscala/PartialFunction$$anonfun$1;-><init>()V

    iput-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    .line 249
    new-instance v0, Lscala/PartialFunction$$anonfun$2;

    invoke-direct {v0}, Lscala/PartialFunction$$anonfun$2;-><init>()V

    iput-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$constFalse:Lscala/Function1;

    .line 251
    new-instance v0, Lscala/PartialFunction$$anon$1;

    invoke-direct {v0}, Lscala/PartialFunction$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/PartialFunction$;->empty_pf:Lscala/PartialFunction;

    return-void
.end method


# virtual methods
.method public empty()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lscala/PartialFunction$;->empty_pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public scala$PartialFunction$$checkFallback()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Object;",
            "TB;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public scala$PartialFunction$$fallbackOccurred(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)Z"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
