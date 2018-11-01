.class public final enum Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
.super Ljava/lang/Enum;
.source "MaterialDrawerFont.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/IIcon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;",
        ">;",
        "Lcom/mikepenz/iconics/typeface/IIcon;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_arrow_drop_up:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_expand_less:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_expand_more:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field private static typeface:Lcom/mikepenz/iconics/typeface/ITypeface;


# instance fields
.field character:C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_arrow_drop_down"

    const v2, 0xe5c5

    invoke-direct {v0, v1, v3, v2}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 112
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_arrow_drop_up"

    const v2, 0xe5c7

    invoke-direct {v0, v1, v4, v2}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_up:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 113
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_expand_less"

    const v2, 0xe5ce

    invoke-direct {v0, v1, v5, v2}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_expand_less:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 114
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_expand_more"

    const v2, 0xe5cf

    invoke-direct {v0, v1, v6, v2}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_expand_more:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 115
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_person"

    const v2, 0xe7fd

    invoke-direct {v0, v1, v7, v2}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_up:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_expand_less:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_expand_more:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->$VALUES:[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .param p3, "character"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-char p3, p0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->character:C

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    return-object v0
.end method

.method public static values()[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->$VALUES:[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-virtual {v0}, [Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    return-object v0
.end method


# virtual methods
.method public getCharacter()C
    .locals 1

    .prologue
    .line 128
    iget-char v0, p0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->character:C

    return v0
.end method

.method public getTypeface()Lcom/mikepenz/iconics/typeface/ITypeface;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->typeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;-><init>()V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->typeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 142
    :cond_0
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->typeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    return-object v0
.end method
