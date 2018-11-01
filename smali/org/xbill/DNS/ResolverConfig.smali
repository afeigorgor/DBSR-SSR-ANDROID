.class public Lorg/xbill/DNS/ResolverConfig;
.super Ljava/lang/Object;
.source "ResolverConfig.java"


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

.field private static currentConfig:Lorg/xbill/DNS/ResolverConfig;


# instance fields
.field private ndots:I

.field private searchlist:[Lorg/xbill/DNS/Name;

.field private servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 38
    iput v3, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findProperty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findSunJVM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v2, :cond_0

    .line 53
    :cond_2
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "OS":Ljava/lang/String;
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "vendor":Ljava/lang/String;
    const-string v2, "Windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 56
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    const-string v2, "98"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    const-string v2, "ME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 59
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->find95()V

    goto :goto_0

    .line 61
    :cond_4
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNT()V

    goto :goto_0

    .line 62
    :cond_5
    const-string v2, "NetWare"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 63
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNetware()V

    goto :goto_0

    .line 64
    :cond_6
    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 65
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findAndroid()V

    goto :goto_0

    .line 67
    :cond_7
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findUnix()V

    goto :goto_0
.end method

.method private addSearch(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 84
    const-string v2, "verbose"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "adding search "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_0
    :try_start_0
    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    goto :goto_0

    .line 94
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v1    # "name":Lorg/xbill/DNS/Name;
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addServer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "adding server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 288
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

.method private configureFromLists(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "lserver"    # Ljava/util/List;
    .param p2, "lsearch"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    new-array v0, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    check-cast v0, [Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 119
    :cond_1
    return-void
.end method

.method private configureNdots(I)V
    .locals 1
    .param p1, "lndots"    # I

    .prologue
    .line 123
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 124
    iput p1, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 125
    :cond_0
    return-void
.end method

.method private find95()V
    .locals 7

    .prologue
    .line 393
    const-string v3, "winipcfg.out"

    .line 396
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "winipcfg /all /batch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 397
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 398
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 400
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "p":Ljava/lang/Process;
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private findAndroid()V
    .locals 14

    .prologue
    .line 434
    const-string v7, "^\\d+(\\.\\d+){3}$"

    .line 435
    .local v7, "re1":Ljava/lang/String;
    const-string v8, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 436
    .local v8, "re2":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, "lserver":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v3, "lsearch":Ljava/util/ArrayList;
    :try_start_0
    const-string v10, "android.os.SystemProperties"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 441
    .local v0, "SystemProperties":Ljava/lang/Class;
    const-string v11, "get"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v10, Lorg/xbill/DNS/ResolverConfig;->class$java$lang$String:Ljava/lang/Class;

    if-nez v10, :cond_2

    const-string v10, "java.lang.String"

    invoke-static {v10}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/xbill/DNS/ResolverConfig;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v10, v12, v13

    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 444
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x4

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "net.dns1"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "net.dns2"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "net.dns3"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    const-string v11, "net.dns4"

    aput-object v11, v6, v10

    .line 446
    .local v6, "netdns":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v6

    if-ge v2, v10, :cond_3

    .line 447
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v11, v6, v2

    aput-object v11, v1, v10

    .line 448
    .local v1, "args":[Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 449
    .local v9, "v":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v10, "^\\d+(\\.\\d+){3}$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 452
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "netdns":[Ljava/lang/String;
    .end local v9    # "v":Ljava/lang/String;
    :cond_2
    sget-object v10, Lorg/xbill/DNS/ResolverConfig;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    :catch_0
    move-exception v10

    .line 457
    :cond_3
    invoke-direct {p0, v4, v3}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 458
    return-void
.end method

.method private findNT()V
    .locals 4

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "ipconfig /all"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 415
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 416
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private findNetware()V
    .locals 1

    .prologue
    .line 280
    const-string v0, "sys:/etc/resolv.cfg"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private findProperty()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v1, "lserver":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, "lsearch":Ljava/util/List;
    const-string v5, "dns.server"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 146
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_0
    const-string v5, "dns.search"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_1

    .line 148
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 152
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 153
    iget-object v5, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method private findResolvConf(Ljava/lang/String;)V
    .locals 12
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v8, "lserver":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v7, "lsearch":Ljava/util/List;
    const/4 v6, -0x1

    .line 231
    .local v6, "lndots":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 232
    const-string v11, "nameserver"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 233
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 234
    .local v9, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 235
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v8}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 266
    .end local v5    # "line":Ljava/lang/String;
    .end local v9    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v11

    .line 269
    :goto_1
    invoke-direct {p0, v8, v7}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v6}, Lorg/xbill/DNS/ResolverConfig;->configureNdots(I)V

    move-object v2, v3

    .line 271
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "lndots":I
    .end local v7    # "lsearch":Ljava/util/List;
    .end local v8    # "lserver":Ljava/util/List;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 221
    :catch_1
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 237
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lndots":I
    .restart local v7    # "lsearch":Ljava/util/List;
    .restart local v8    # "lserver":Ljava/util/List;
    :cond_1
    :try_start_2
    const-string v11, "domain"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 238
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v9    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 240
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 242
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 243
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 245
    .end local v9    # "st":Ljava/util/StringTokenizer;
    :cond_2
    const-string v11, "search"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 246
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 247
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 248
    :cond_3
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v9    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 250
    :goto_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 251
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 253
    .end local v9    # "st":Ljava/util/StringTokenizer;
    :cond_4
    const-string v11, "options"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 254
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v9    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 256
    :cond_5
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 257
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "token":Ljava/lang/String;
    const-string v11, "ndots:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 259
    invoke-direct {p0, v10}, Lorg/xbill/DNS/ResolverConfig;->parseNdots(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    .line 264
    .end local v9    # "st":Ljava/util/StringTokenizer;
    .end local v10    # "token":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private findSunJVM()Z
    .locals 15

    .prologue
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v4, "lserver":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v2, "lsearch":Ljava/util/List;
    const/4 v14, 0x0

    :try_start_0
    new-array v7, v14, [Ljava/lang/Class;

    .line 169
    .local v7, "noClasses":[Ljava/lang/Class;
    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/Object;

    .line 170
    .local v8, "noObjects":[Ljava/lang/Object;
    const-string v12, "sun.net.dns.ResolverConfiguration"

    .line 171
    .local v12, "resConfName":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 175
    .local v11, "resConfClass":Ljava/lang/Class;
    const-string v14, "open"

    invoke-virtual {v11, v14, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 176
    .local v9, "open":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 179
    .local v10, "resConf":Ljava/lang/Object;
    const-string v14, "nameservers"

    invoke-virtual {v11, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 181
    .local v6, "nameservers":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 184
    .local v5, "lserver_tmp":Ljava/util/List;
    const-string v14, "searchlist"

    invoke-virtual {v11, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 186
    .local v13, "searchlist":Ljava/lang/reflect/Method;
    invoke-virtual {v13, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v3, "lsearch_tmp":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    .line 193
    const/4 v14, 0x0

    .line 207
    .end local v3    # "lsearch_tmp":Ljava/util/List;
    .end local v5    # "lserver_tmp":Ljava/util/List;
    .end local v6    # "nameservers":Ljava/lang/reflect/Method;
    .end local v7    # "noClasses":[Ljava/lang/Class;
    .end local v8    # "noObjects":[Ljava/lang/Object;
    .end local v9    # "open":Ljava/lang/reflect/Method;
    .end local v10    # "resConf":Ljava/lang/Object;
    .end local v11    # "resConfClass":Ljava/lang/Class;
    .end local v12    # "resConfName":Ljava/lang/String;
    .end local v13    # "searchlist":Ljava/lang/reflect/Method;
    :goto_0
    return v14

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "lsearch_tmp":Ljava/util/List;
    .restart local v5    # "lserver_tmp":Ljava/util/List;
    .restart local v6    # "nameservers":Ljava/lang/reflect/Method;
    .restart local v7    # "noClasses":[Ljava/lang/Class;
    .restart local v8    # "noObjects":[Ljava/lang/Object;
    .restart local v9    # "open":Ljava/lang/reflect/Method;
    .restart local v10    # "resConf":Ljava/lang/Object;
    .restart local v11    # "resConfClass":Ljava/lang/Class;
    .restart local v12    # "resConfName":Ljava/lang/String;
    .restart local v13    # "searchlist":Ljava/lang/reflect/Method;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 196
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {p0, v14, v4}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 201
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {p0, v14, v2}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 206
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v4, v2}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 207
    const/4 v14, 0x1

    goto :goto_0
.end method

.method private findUnix()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "/etc/resolv.conf"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private findWin(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 371
    const-string v4, "org.xbill.DNS.windows.parse.buffer"

    .line 372
    .local v4, "property":Ljava/lang/String;
    const/16 v2, 0x2000

    .line 373
    .local v2, "defaultBufSize":I
    const/16 v5, 0x2000

    invoke-static {v4, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 374
    .local v1, "bufSize":I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 375
    .local v0, "b":Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 376
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 377
    iget-object v5, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    new-instance v5, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v3

    .line 382
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private findWin(Ljava/io/InputStream;Ljava/util/Locale;)V
    .locals 21
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 288
    sget-object v19, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    if-nez v19, :cond_1

    const-string v19, "org.xbill.DNS.ResolverConfig"

    invoke-static/range {v19 .. v19}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    sput-object v19, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "packageName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ".windows.DNSServer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 291
    .local v16, "resPackageName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 292
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v15

    .line 296
    .local v15, "res":Ljava/util/ResourceBundle;
    :goto_1
    const-string v19, "host_name"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "host_name":Ljava/lang/String;
    const-string v19, "primary_dns_suffix"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 298
    .local v12, "primary_dns_suffix":Ljava/lang/String;
    const-string v19, "dns_suffix"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "dns_suffix":Ljava/lang/String;
    const-string v19, "dns_servers"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "dns_servers":Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 303
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v9, "lserver":Ljava/util/List;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v8, "lsearch":Ljava/util/List;
    const/4 v7, 0x0

    .line 306
    .local v7, "line":Ljava/lang/String;
    const/4 v14, 0x0

    .line 307
    .local v14, "readingServers":Z
    const/4 v13, 0x0

    .line 308
    .local v13, "readingSearches":Z
    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 309
    new-instance v18, Ljava/util/StringTokenizer;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 310
    .local v18, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-nez v19, :cond_3

    .line 311
    const/4 v14, 0x0

    .line 312
    const/4 v13, 0x0

    .line 313
    goto :goto_2

    .line 288
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dns_servers":Ljava/lang/String;
    .end local v4    # "dns_suffix":Ljava/lang/String;
    .end local v6    # "host_name":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lsearch":Ljava/util/List;
    .end local v9    # "lserver":Ljava/util/List;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "primary_dns_suffix":Ljava/lang/String;
    .end local v13    # "readingSearches":Z
    .end local v14    # "readingServers":Z
    .end local v15    # "res":Ljava/util/ResourceBundle;
    .end local v16    # "resPackageName":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :cond_1
    sget-object v19, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    goto :goto_0

    .line 294
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v16    # "resPackageName":Ljava/lang/String;
    :cond_2
    invoke-static/range {v16 .. v16}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v15

    .restart local v15    # "res":Ljava/util/ResourceBundle;
    goto :goto_1

    .line 315
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dns_servers":Ljava/lang/String;
    .restart local v4    # "dns_suffix":Ljava/lang/String;
    .restart local v6    # "host_name":Ljava/lang/String;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lsearch":Ljava/util/List;
    .restart local v9    # "lserver":Ljava/util/List;
    .restart local v12    # "primary_dns_suffix":Ljava/lang/String;
    .restart local v13    # "readingSearches":Z
    .restart local v14    # "readingServers":Z
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    :cond_3
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 316
    .local v17, "s":Ljava/lang/String;
    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 317
    const/4 v14, 0x0

    .line 318
    const/4 v13, 0x0

    .line 321
    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 322
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 323
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_3

    .line 326
    :cond_5
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_2
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 331
    .local v10, "name":Lorg/xbill/DNS/Name;
    :try_start_3
    invoke-virtual {v10}, Lorg/xbill/DNS/Name;->labels()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 364
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lsearch":Ljava/util/List;
    .end local v9    # "lserver":Ljava/util/List;
    .end local v10    # "name":Lorg/xbill/DNS/Name;
    .end local v13    # "readingSearches":Z
    .end local v14    # "readingServers":Z
    .end local v17    # "s":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v19

    .line 366
    :goto_4
    return-void

    .line 328
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lsearch":Ljava/util/List;
    .restart local v9    # "lserver":Ljava/util/List;
    .restart local v13    # "readingSearches":Z
    .restart local v14    # "readingServers":Z
    .restart local v17    # "s":Ljava/lang/String;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v5

    .line 329
    .local v5, "e":Lorg/xbill/DNS/TextParseException;
    goto :goto_2

    .line 334
    .end local v5    # "e":Lorg/xbill/DNS/TextParseException;
    :cond_6
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 335
    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 336
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 337
    :cond_7
    const-string v19, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 341
    :cond_8
    if-nez v13, :cond_9

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 344
    :cond_9
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 345
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    goto :goto_6

    .line 346
    :cond_a
    const-string v19, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 349
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 350
    :cond_b
    if-nez v14, :cond_c

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 353
    :cond_c
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 354
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    .line 355
    :cond_d
    const-string v19, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 362
    .end local v17    # "s":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4
.end method

.method public static declared-synchronized getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;
    .locals 2

    .prologue
    .line 496
    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseNdots(Ljava/lang/String;)I
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "ndots":I
    if-ltz v0, :cond_1

    .line 103
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setting ndots "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "ndots":I
    :cond_0
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v1

    .line 110
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static refresh()V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Lorg/xbill/DNS/ResolverConfig;

    invoke-direct {v0}, Lorg/xbill/DNS/ResolverConfig;-><init>()V

    .line 503
    .local v0, "newConfig":Lorg/xbill/DNS/ResolverConfig;
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.xbill.DNS.ResolverConfig"

    invoke-static {v1}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    :goto_0
    monitor-enter v1

    .line 504
    :try_start_0
    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    .line 505
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    return-void

    .line 503
    :cond_0
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public ndots()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    goto :goto_0
.end method

.method public searchPath()[Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public servers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    return-object v0
.end method
