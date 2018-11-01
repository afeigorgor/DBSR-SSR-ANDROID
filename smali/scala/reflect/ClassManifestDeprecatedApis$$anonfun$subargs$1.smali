.class public final Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;
.super Lscala/runtime/AbstractFunction2;
.source "ClassManifestDeprecatedApis.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ClassManifestDeprecatedApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2",
        "<",
        "Lscala/reflect/OptManifest",
        "<*>;",
        "Lscala/reflect/OptManifest",
        "<*>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0
    .param p1, "$outer"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lscala/reflect/OptManifest;

    .end local p1    # "v1":Ljava/lang/Object;
    check-cast p2, Lscala/reflect/OptManifest;

    .end local p2    # "v2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;->apply(Lscala/reflect/OptManifest;Lscala/reflect/OptManifest;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/reflect/OptManifest;Lscala/reflect/OptManifest;)Z
    .locals 3
    .param p1, "x0$1"    # Lscala/reflect/OptManifest;
    .param p2, "x1$1"    # Lscala/reflect/OptManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/OptManifest",
            "<*>;",
            "Lscala/reflect/OptManifest",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lscala/Tuple2;

    invoke-direct {v1, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lscala/reflect/ClassTag;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/reflect/ClassTag;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/reflect/ClassTag;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/reflect/ClassTag;

    invoke-interface {v0, v1}, Lscala/reflect/ClassTag;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
