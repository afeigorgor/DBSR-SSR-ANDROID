.class public final Lscala/runtime/BoxedUnit;
.super Ljava/lang/Object;
.source "BoxedUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIT:Lscala/runtime/BoxedUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lscala/runtime/BoxedUnit;

    invoke-direct {v0}, Lscala/runtime/BoxedUnit;-><init>()V

    sput-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 19
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sput-object v0, Lscala/runtime/BoxedUnit;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "()"

    return-object v0
.end method
