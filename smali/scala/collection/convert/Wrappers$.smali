.class public final Lscala/collection/convert/Wrappers$;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/convert/Wrappers;


# static fields
.field public static final MODULE$:Lscala/collection/convert/Wrappers$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/convert/Wrappers$;

    invoke-direct {v0}, Lscala/collection/convert/Wrappers$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-static {p0}, Lscala/collection/convert/Wrappers$class;->$init$(Lscala/collection/convert/Wrappers;)V

    return-void
.end method
