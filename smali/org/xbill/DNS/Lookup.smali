.class public final Lorg/xbill/DNS/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field static class$org$xbill$DNS$Lookup:Ljava/lang/Class;

.field private static defaultCaches:Ljava/util/Map;

.field private static defaultNdots:I

.field private static defaultResolver:Lorg/xbill/DNS/Resolver;

.field private static defaultSearchPath:[Lorg/xbill/DNS/Name;

.field private static final noAliases:[Lorg/xbill/DNS/Name;


# instance fields
.field private aliases:Ljava/util/List;

.field private answers:[Lorg/xbill/DNS/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lorg/xbill/DNS/Cache;

.field private credibility:I

.field private dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private iterations:I

.field private name:Lorg/xbill/DNS/Name;

.field private nametoolong:Z

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private result:I

.field private searchPath:[Lorg/xbill/DNS/Name;

.field private temporary_cache:Z

.field private timedout:Z

.field private type:I

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 97
    invoke-static {}, Lorg/xbill/DNS/Lookup;->refreshDefault()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 299
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 231
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 232
    invoke-static {p2}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 236
    iput p2, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 237
    iput p3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    .line 238
    sget-object v0, Lorg/xbill/DNS/Lookup;->class$org$xbill$DNS$Lookup:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.xbill.DNS.Lookup"

    invoke-static {v0}, Lorg/xbill/DNS/Lookup;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Lookup;->class$org$xbill$DNS$Lookup:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 239
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultResolver()Lorg/xbill/DNS/Resolver;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 240
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultSearchPath()[Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 241
    invoke-static {p3}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 244
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 246
    return-void

    .line 238
    :cond_1
    sget-object v0, Lorg/xbill/DNS/Lookup;->class$org$xbill$DNS$Lookup:Ljava/lang/Class;

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "oldname"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 396
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 397
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 398
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 399
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 400
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 401
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 402
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 403
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 405
    const-string v0, "CNAME loop"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 406
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_2

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 411
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultCache(I)Lorg/xbill/DNS/Cache;
    .locals 4
    .param p0, "dclass"    # I

    .prologue
    .line 126
    const-class v2, Lorg/xbill/DNS/Lookup;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 127
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    .line 128
    .local v0, "c":Lorg/xbill/DNS/Cache;
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/xbill/DNS/Cache;

    .end local v0    # "c":Lorg/xbill/DNS/Cache;
    invoke-direct {v0, p0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 130
    .restart local v0    # "c":Lorg/xbill/DNS/Cache;
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit v2

    return-object v0

    .line 126
    .end local v0    # "c":Lorg/xbill/DNS/Cache;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getDefaultResolver()Lorg/xbill/DNS/Resolver;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 153
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookup(Lorg/xbill/DNS/Name;)V
    .locals 10
    .param p1, "current"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v9, 0x1

    .line 463
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v7, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v8, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v6, p1, v7, v8}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 464
    .local v5, "sr":Lorg/xbill/DNS/SetResponse;
    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v6, :cond_0

    .line 465
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "lookup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v8}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 469
    :cond_0
    invoke-direct {p0, p1, v5}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    .line 470
    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-eqz v6, :cond_2

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    iget v6, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v7, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {p1, v6, v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 474
    .local v2, "question":Lorg/xbill/DNS/Record;
    invoke-static {v2}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v1

    .line 475
    .local v1, "query":Lorg/xbill/DNS/Message;
    const/4 v4, 0x0

    .line 477
    .local v4, "response":Lorg/xbill/DNS/Message;
    :try_start_0
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    invoke-interface {v6, v1}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 487
    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v3

    .line 488
    .local v3, "rcode":I
    if-eqz v3, :cond_4

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    .line 491
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 492
    invoke-static {v3}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 479
    .end local v3    # "rcode":I
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    instance-of v6, v0, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_3

    .line 482
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    goto :goto_0

    .line 484
    :cond_3
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "rcode":I
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 498
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 499
    const-string v6, "response does not match query"

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_5
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v6, v4}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 504
    if-nez v5, :cond_6

    .line 505
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v7, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v8, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v6, p1, v7, v8}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 506
    :cond_6
    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v6, :cond_7

    .line 507
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "queried "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v8}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 511
    :cond_7
    invoke-direct {p0, p1, v5}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    goto/16 :goto_0
.end method

.method private processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "response"    # Lorg/xbill/DNS/SetResponse;

    .prologue
    const/4 v8, 0x1

    .line 417
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 418
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 419
    .local v6, "rrsets":[Lorg/xbill/DNS/RRset;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v5, "l":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 424
    aget-object v7, v6, v3

    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v4

    .line 425
    .local v4, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 430
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/xbill/DNS/Record;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/xbill/DNS/Record;

    check-cast v7, [Lorg/xbill/DNS/Record;

    iput-object v7, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 431
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 459
    .end local v3    # "i":I
    .end local v5    # "l":Ljava/util/List;
    .end local v6    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_2
    :goto_2
    return-void

    .line 432
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 433
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 434
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 435
    iget v7, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    if-lez v7, :cond_2

    .line 436
    const/4 v7, 0x3

    iput v7, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 437
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 439
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 440
    const/4 v7, 0x4

    iput v7, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 441
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 442
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 443
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 444
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 445
    .local v0, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_2

    .line 446
    .end local v0    # "cname":Lorg/xbill/DNS/CNAMERecord;
    :cond_6
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 447
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v1

    .line 449
    .local v1, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e":Lorg/xbill/DNS/NameTooLongException;
    iput v8, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 452
    const-string v7, "Invalid DNAME target"

    iput-object v7, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 453
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 455
    .end local v1    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v2    # "e":Lorg/xbill/DNS/NameTooLongException;
    :cond_7
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    iput-boolean v8, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    goto :goto_2
.end method

.method public static declared-synchronized refreshDefault()V
    .locals 4

    .prologue
    .line 86
    const-class v2, Lorg/xbill/DNS/Lookup;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->searchPath()[Lorg/xbill/DNS/Name;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 93
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->ndots()I

    move-result v1

    sput v1, Lorg/xbill/DNS/Lookup;->defaultNdots:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v2

    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to initialize resolver"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    iput v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 195
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 196
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 197
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 198
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 199
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 201
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 203
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 204
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 206
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 207
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    .line 208
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 209
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache;->clearCache()V

    .line 211
    :cond_0
    return-void
.end method

.method private resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "current"    # Lorg/xbill/DNS/Name;
    .param p2, "suffix"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 516
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "tname":Lorg/xbill/DNS/Name;
    if-nez p2, :cond_0

    .line 519
    move-object v1, p1

    .line 529
    :goto_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    .line 530
    :goto_1
    return-void

    .line 522
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    goto :goto_1
.end method


# virtual methods
.method public run()[Lorg/xbill/DNS/Record;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 538
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_0

    .line 539
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->reset()V

    .line 540
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 558
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v1, :cond_2

    .line 559
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    if-eqz v1, :cond_8

    .line 560
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 561
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 562
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 584
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    :goto_2
    return-object v1

    .line 542
    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    if-nez v1, :cond_4

    .line 543
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    sget v2, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    if-le v1, v2, :cond_5

    .line 546
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 547
    :cond_5
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_6

    .line 548
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 550
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 551
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 552
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_7

    .line 553
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 554
    :cond_7
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    if-nez v1, :cond_1

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 563
    .end local v0    # "i":I
    :cond_8
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    if-eqz v1, :cond_9

    .line 564
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 565
    const-string v1, "timed out"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 566
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 567
    :cond_9
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    if-eqz v1, :cond_a

    .line 568
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 569
    const-string v1, "network error"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 570
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 571
    :cond_a
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    if-eqz v1, :cond_b

    .line 572
    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 573
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 574
    :cond_b
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    if-eqz v1, :cond_c

    .line 575
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 576
    const-string v1, "referral"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 577
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 578
    :cond_c
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    if-eqz v1, :cond_2

    .line 579
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 580
    const-string v1, "name too long"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 581
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto/16 :goto_1
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xbill/DNS/Resolver;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 321
    return-void
.end method
