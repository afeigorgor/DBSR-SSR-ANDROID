.class public Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;
.super Ljava/lang/Object;
.source "DrawerImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;
    }
.end annotation


# static fields
.field private static SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;


# instance fields
.field private imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

.field private mHandleAllUris:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    return-void
.end method

.method private constructor <init>(Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;)V
    .locals 1
    .param p1, "loaderImpl"    # Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->mHandleAllUris:Z

    .line 24
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    new-instance v1, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$1;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;-><init>(Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;)V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    .line 37
    :cond_0
    sget-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    return-object v0
.end method


# virtual methods
.method public setImage(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->mHandleAllUris:Z

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;->placeholder(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    .local v0, "placeHolder":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    invoke-interface {v1, p1, p2, v0, p3}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;->set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 58
    .end local v0    # "placeHolder":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
