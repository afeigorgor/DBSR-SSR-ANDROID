.class public Lscala/collection/immutable/Stream$cons$;
.super Ljava/lang/Object;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cons$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stream$cons$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stream$cons$;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$cons$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    return-void
.end method
