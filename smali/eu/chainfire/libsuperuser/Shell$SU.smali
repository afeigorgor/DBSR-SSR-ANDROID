.class public Leu/chainfire/libsuperuser/Shell$SU;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SU"
.end annotation


# static fields
.field private static isSELinuxEnforcing:Ljava/lang/Boolean;

.field private static suVersion:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    sput-object v2, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sput-object v0, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    return-void
.end method

.method public static available()Z
    .locals 2

    .prologue
    .line 331
    sget-object v1, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/libsuperuser/Shell;->parseAvailableResult(Ljava/util/List;Z)Z

    move-result v1

    return v1
.end method

.method public static isSU(Ljava/lang/String;)Z
    .locals 2
    .param p0, "shell"    # Ljava/lang/String;

    .prologue
    .line 401
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 402
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 403
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 407
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 408
    if-ltz v0, :cond_1

    .line 409
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 412
    :cond_1
    const-string v1, "su"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static run([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    const-string v0, "su"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
