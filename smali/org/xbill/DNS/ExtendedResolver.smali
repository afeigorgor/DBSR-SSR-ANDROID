.class public Lorg/xbill/DNS/ExtendedResolver;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ExtendedResolver$Resolution;
    }
.end annotation


# instance fields
.field private lbStart:I

.field private loadBalance:Z

.field private resolvers:Ljava/util/List;

.field private retries:I


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v3, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v3, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v3, 0x3

    iput v3, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 256
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    .line 257
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/ResolverConfig;->servers()[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "servers":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 260
    new-instance v1, Lorg/xbill/DNS/SimpleResolver;

    aget-object v3, v2, v0

    invoke-direct {v1, v3}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "r":Lorg/xbill/DNS/Resolver;
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lorg/xbill/DNS/Resolver;->setTimeout(I)V

    .line 262
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    .end local v1    # "r":Lorg/xbill/DNS/Resolver;
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    new-instance v4, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v4}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    return-void
.end method

.method static access$000(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ExtendedResolver;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    return-object v0
.end method

.method static access$100(Lorg/xbill/DNS/ExtendedResolver;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ExtendedResolver;

    .prologue
    .line 17
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    return v0
.end method

.method static access$200(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ExtendedResolver;

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static access$208(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 2
    .param p0, "x0"    # Lorg/xbill/DNS/ExtendedResolver;

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static access$244(Lorg/xbill/DNS/ExtendedResolver;I)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ExtendedResolver;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    rem-int/2addr v0, p1

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static access$300(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ExtendedResolver;

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 244
    return-void
.end method


# virtual methods
.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 358
    .local v0, "res":Lorg/xbill/DNS/ExtendedResolver$Resolution;
    invoke-virtual {v0}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->start()Lorg/xbill/DNS/Message;

    move-result-object v1

    return-object v1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "listener"    # Lorg/xbill/DNS/ResolverListener;

    .prologue
    .line 373
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 374
    .local v0, "res":Lorg/xbill/DNS/ExtendedResolver$Resolution;
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->startAsync(Lorg/xbill/DNS/ResolverListener;)V

    .line 375
    return-object v0
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "secs"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/ExtendedResolver;->setTimeout(II)V

    .line 345
    return-void
.end method

.method public setTimeout(II)V
    .locals 2
    .param p1, "secs"    # I
    .param p2, "msecs"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1, p2}, Lorg/xbill/DNS/Resolver;->setTimeout(II)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method
