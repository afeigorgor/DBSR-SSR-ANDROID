.class public abstract Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;
.super Ljava/lang/Object;
.source "AbstractDrawerImageLoader.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public placeholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->getPlaceHolder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;->placeholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 12
    return-void
.end method

.method public set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;->set(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    .line 19
    const-string v0, "MaterialDrawer"

    const-string v1, "you have not specified a ImageLoader implementation through the DrawerImageLoader.init(IDrawerImageLoader) method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
