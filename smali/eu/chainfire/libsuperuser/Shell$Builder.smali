.class public Leu/chainfire/libsuperuser/Shell$Builder;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoHandler:Z

.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private shell:Ljava/lang/String;

.field private wantSTDERR:Z

.field private watchdogTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    .line 628
    const-string v0, "sh"

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    .line 629
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    .line 630
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    .line 632
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 633
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 634
    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return-void
.end method

.method static synthetic access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    return v0
.end method

.method static synthetic access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    return v0
.end method

.method static synthetic access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$800(Leu/chainfire/libsuperuser/Shell$Builder;)I
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return v0
.end method

.method static synthetic access$900(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public open(Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 2
    .param p1, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .prologue
    .line 919
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;Leu/chainfire/libsuperuser/Shell$1;)V

    return-object v0
.end method

.method public setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "shell"    # Ljava/lang/String;

    .prologue
    .line 678
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public setWantSTDERR(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "wantSTDERR"    # Z

    .prologue
    .line 707
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    .line 708
    return-object p0
.end method

.method public setWatchdogTimeout(I)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "watchdogTimeout"    # I

    .prologue
    .line 882
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    .line 883
    return-object p0
.end method

.method public useSU()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    .prologue
    .line 697
    const-string v0, "su"

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method
