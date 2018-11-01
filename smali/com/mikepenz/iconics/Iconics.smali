.class public final Lcom/mikepenz/iconics/Iconics;
.super Ljava/lang/Object;
.source "Iconics.java"


# static fields
.field private static FONTS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;"
        }
    .end annotation
.end field

.field private static INIT_DONE:Z

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/mikepenz/iconics/Iconics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mikepenz/iconics/Iconics;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mikepenz/iconics/Iconics;->INIT_DONE:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mikepenz/iconics/Iconics;->FONTS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static findFont(Landroid/content/Context;Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/ITypeface;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/mikepenz/iconics/Iconics;->init(Landroid/content/Context;)V

    .line 125
    sget-object v0, Lcom/mikepenz/iconics/Iconics;->FONTS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/typeface/ITypeface;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-boolean v4, Lcom/mikepenz/iconics/Iconics;->INIT_DONE:Z

    if-nez v4, :cond_1

    .line 53
    invoke-static {p0}, Lcom/mikepenz/iconics/utils/GenericsUtil;->getFields(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "fonts":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 56
    .local v2, "fontsClassPath":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 57
    .local v3, "typeface":Lcom/mikepenz/iconics/typeface/ITypeface;
    invoke-static {v3}, Lcom/mikepenz/iconics/Iconics;->validateFont(Lcom/mikepenz/iconics/typeface/ITypeface;)V

    .line 58
    sget-object v6, Lcom/mikepenz/iconics/Iconics;->FONTS:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/mikepenz/iconics/typeface/ITypeface;->getMappingPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v3    # "typeface":Lcom/mikepenz/iconics/typeface/ITypeface;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Android-Iconics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t init: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fontsClassPath":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/mikepenz/iconics/Iconics;->INIT_DONE:Z

    .line 65
    .end local v1    # "fonts":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static validateFont(Lcom/mikepenz/iconics/typeface/ITypeface;)V
    .locals 2
    .param p0, "font"    # Lcom/mikepenz/iconics/typeface/ITypeface;

    .prologue
    .line 100
    invoke-interface {p0}, Lcom/mikepenz/iconics/typeface/ITypeface;->getMappingPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The mapping prefix of a font must be three characters long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method
