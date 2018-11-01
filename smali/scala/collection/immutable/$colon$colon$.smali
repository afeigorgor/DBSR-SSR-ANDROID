.class public final Lscala/collection/immutable/$colon$colon$;
.super Ljava/lang/Object;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/$colon$colon$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/$colon$colon$;

    invoke-direct {v0}, Lscala/collection/immutable/$colon$colon$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/$colon$colon$;->MODULE$:Lscala/collection/immutable/$colon$colon$;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const-string v0, "::"

    return-object v0
.end method
