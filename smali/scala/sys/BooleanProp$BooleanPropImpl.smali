.class public Lscala/sys/BooleanProp$BooleanPropImpl;
.super Lscala/sys/PropImpl;
.source "BooleanProp.scala"

# interfaces
.implements Lscala/sys/BooleanProp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/BooleanProp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanPropImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/sys/PropImpl",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/sys/BooleanProp;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lscala/Function1;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueFn"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Function1",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lscala/sys/PropImpl;-><init>(Ljava/lang/String;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic value()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
