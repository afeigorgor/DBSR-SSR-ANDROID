.class public interface abstract Lscala/util/PropertiesTrait;
.super Ljava/lang/Object;
.source "Properties.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract pickJarBasedOn()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract propCategory()Ljava/lang/String;
.end method

.method public abstract propFilename()Ljava/lang/String;
.end method

.method public abstract propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract propOrNone(Ljava/lang/String;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract propOrNull(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V
.end method

.method public abstract scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V
.end method

.method public abstract scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V
.end method

.method public abstract scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V
.end method

.method public abstract scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V
.end method

.method public abstract scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract scalaPropOrNone(Ljava/lang/String;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scalaProps()Ljava/util/Properties;
.end method
