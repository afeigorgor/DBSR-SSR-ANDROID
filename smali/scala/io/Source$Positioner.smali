.class public Lscala/io/Source$Positioner;
.super Ljava/lang/Object;
.source "Source.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Positioner"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/io/Source;

.field private ccol:I

.field private ch:C

.field private cline:I

.field private final encoder:Lscala/io/Position;

.field private pos:I

.field private tabinc:I


# direct methods
.method public constructor <init>(Lscala/io/Source;Lscala/io/Position;)V
    .locals 2
    .param p1, "$outer"    # Lscala/io/Source;
    .param p2, "encoder"    # Lscala/io/Position;

    .prologue
    const/4 v1, 0x1

    .line 244
    iput-object p2, p0, Lscala/io/Source$Positioner;->encoder:Lscala/io/Position;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/io/Source$Positioner;->$outer:Lscala/io/Source;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lscala/io/Source$Positioner;->pos:I

    .line 253
    iput v1, p0, Lscala/io/Source$Positioner;->cline:I

    .line 254
    iput v1, p0, Lscala/io/Source$Positioner;->ccol:I

    .line 257
    const/4 v0, 0x4

    iput v0, p0, Lscala/io/Source$Positioner;->tabinc:I

    return-void
.end method


# virtual methods
.method public ccol()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lscala/io/Source$Positioner;->ccol:I

    return v0
.end method

.method public ccol_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 254
    iput p1, p0, Lscala/io/Source$Positioner;->ccol:I

    return-void
.end method

.method public ch()C
    .locals 1

    .prologue
    .line 247
    iget-char v0, p0, Lscala/io/Source$Positioner;->ch:C

    return v0
.end method

.method public ch_$eq(C)V
    .locals 0
    .param p1, "x$1"    # C

    .prologue
    .line 247
    iput-char p1, p0, Lscala/io/Source$Positioner;->ch:C

    return-void
.end method

.method public cline()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lscala/io/Source$Positioner;->cline:I

    return v0
.end method

.method public cline_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 253
    iput p1, p0, Lscala/io/Source$Positioner;->cline:I

    return-void
.end method

.method public next()C
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lscala/io/Source$Positioner;->scala$io$Source$Positioner$$$outer()Lscala/io/Source;

    move-result-object v0

    invoke-virtual {v0}, Lscala/io/Source;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Lscala/io/Source$Positioner;->ch_$eq(C)V

    .line 261
    iget-object v0, p0, Lscala/io/Source$Positioner;->encoder:Lscala/io/Position;

    invoke-virtual {p0}, Lscala/io/Source$Positioner;->cline()I

    move-result v1

    invoke-virtual {p0}, Lscala/io/Source$Positioner;->ccol()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/io/Position;->encode(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/io/Source$Positioner;->pos_$eq(I)V

    .line 262
    invoke-virtual {p0}, Lscala/io/Source$Positioner;->ch()C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    invoke-virtual {p0}, Lscala/io/Source$Positioner;->ccol()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/io/Source$Positioner;->ccol_$eq(I)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Lscala/io/Source$Positioner;->ch()C

    move-result v0

    return v0

    .line 267
    :pswitch_0
    invoke-virtual {p0}, Lscala/io/Source$Positioner;->ccol()I

    move-result v0

    invoke-virtual {p0}, Lscala/io/Source$Positioner;->tabinc()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/io/Source$Positioner;->ccol_$eq(I)V

    goto :goto_0

    .line 264
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lscala/io/Source$Positioner;->ccol_$eq(I)V

    .line 265
    invoke-virtual {p0}, Lscala/io/Source$Positioner;->cline()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/io/Source$Positioner;->cline_$eq(I)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pos_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 250
    iput p1, p0, Lscala/io/Source$Positioner;->pos:I

    return-void
.end method

.method public synthetic scala$io$Source$Positioner$$$outer()Lscala/io/Source;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lscala/io/Source$Positioner;->$outer:Lscala/io/Source;

    return-object v0
.end method

.method public tabinc()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lscala/io/Source$Positioner;->tabinc:I

    return v0
.end method
