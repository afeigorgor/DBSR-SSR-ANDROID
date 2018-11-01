.class public Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;
.super Ljava/lang/Object;
.source "MaterialDrawerFont.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/ITypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
    }
.end annotation


# static fields
.field private static typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->valueOf(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMappingPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "mdf"

    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/materialdrawerfont-font-v5.0.0.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;

    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
