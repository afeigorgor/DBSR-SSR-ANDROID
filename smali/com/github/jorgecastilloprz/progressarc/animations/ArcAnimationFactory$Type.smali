.class public final enum Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
.super Ljava/lang/Enum;
.source "ArcAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "GROW"

    invoke-direct {v0, v1, v3}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "SHRINK"

    invoke-direct {v0, v1, v4}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->$VALUES:[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    return-object v0
.end method

.method public static values()[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->$VALUES:[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-virtual {v0}, [Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    return-object v0
.end method
