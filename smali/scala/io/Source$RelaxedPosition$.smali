.class public Lscala/io/Source$RelaxedPosition$;
.super Lscala/io/Position;
.source "Source.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RelaxedPosition$"
.end annotation


# direct methods
.method public constructor <init>(Lscala/io/Source;)V
    .locals 0
    .param p1, "$outer"    # Lscala/io/Source;

    .prologue
    .line 277
    invoke-direct {p0}, Lscala/io/Position;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInput(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "column"    # I

    .prologue
    .line 278
    return-void
.end method
