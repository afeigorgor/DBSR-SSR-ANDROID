.class Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;
.super Ljava/lang/Object;
.source "ZoneTransferIn.java"

# interfaces
.implements Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ZoneTransferIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicHandler"
.end annotation


# instance fields
.field private axfr:Ljava/util/List;

.field private ixfr:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/ZoneTransferIn$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xbill/DNS/ZoneTransferIn$1;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;-><init>()V

    return-void
.end method

.method static access$300(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->axfr:Ljava/util/List;

    return-object v0
.end method

.method static access$400(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public handleRecord(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 154
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    iget-object v3, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 156
    .local v0, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v2, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 157
    iget-object v1, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    .line 162
    .end local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    .local v1, "list":Ljava/util/List;
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void

    .line 159
    .end local v1    # "list":Ljava/util/List;
    .restart local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    .restart local v1    # "list":Ljava/util/List;
    goto :goto_0

    .line 161
    .end local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->axfr:Ljava/util/List;

    .restart local v1    # "list":Ljava/util/List;
    goto :goto_0
.end method

.method public startAXFR()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->axfr:Ljava/util/List;

    .line 133
    return-void
.end method

.method public startIXFR()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    .line 137
    return-void
.end method

.method public startIXFRAdds(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "soa"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 147
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 148
    .local v0, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v1, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {p1}, Lorg/xbill/DNS/ZoneTransferIn;->access$100(Lorg/xbill/DNS/Record;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    .line 150
    return-void
.end method

.method public startIXFRDeletes(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "soa"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 140
    new-instance v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn$Delta;-><init>(Lorg/xbill/DNS/ZoneTransferIn$1;)V

    .line 141
    .local v0, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v1, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {p1}, Lorg/xbill/DNS/ZoneTransferIn;->access$100(Lorg/xbill/DNS/Record;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    .line 143
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method
