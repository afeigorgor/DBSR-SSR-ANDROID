.class public Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ScrimInsetsRelativeLayout.java"


# instance fields
.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

.field private mSystemUIVisible:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTintNavigationBar:Z

.field private mTintStatusBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 31
    iput-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTintStatusBar:Z

    .line 32
    iput-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTintNavigationBar:Z

    .line 33
    iput-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mSystemUIVisible:Z

    .line 46
    sget-object v1, Lcom/mikepenz/materialize/R$styleable;->ScrimInsetsRelativeLayout:[I

    sget v2, Lcom/mikepenz/materialize/R$style;->Widget_Materialize_ScrimInsetsRelativeLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/mikepenz/materialize/R$styleable;->ScrimInsetsRelativeLayout_sirl_insetForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0, v3}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setWillNotDraw(Z)V

    .line 53
    new-instance v1, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout$1;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout$1;-><init>(Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;)Lcom/mikepenz/materialize/view/OnInsetsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getWidth()I

    move-result v2

    .line 80
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getHeight()I

    move-result v0

    .line 81
    .local v0, "height":I
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 83
    .local v1, "sc":I
    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mSystemUIVisible:Z

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 87
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 88
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 89
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 93
    :cond_0
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTintStatusBar:Z

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7, v7, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 95
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    :cond_1
    iget-boolean v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTintNavigationBar:Z

    if-eqz v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v7, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v6

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v6

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 113
    iget-object v3, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 117
    .end local v1    # "sc":I
    :cond_3
    return-void
.end method

.method public getInsetForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnInsetsCallback()Lcom/mikepenz/materialize/view/OnInsetsCallback;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 137
    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 122
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 130
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setInsetForeground(I)V
    .locals 1
    .param p1, "mInsetForegroundColor"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method public setInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mInsetForeground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 148
    return-void
.end method

.method public setOnInsetsCallback(Lcom/mikepenz/materialize/view/OnInsetsCallback;)V
    .locals 0
    .param p1, "onInsetsCallback"    # Lcom/mikepenz/materialize/view/OnInsetsCallback;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mOnInsetsCallback:Lcom/mikepenz/materialize/view/OnInsetsCallback;

    .line 192
    return-void
.end method

.method public setSystemUIVisible(Z)V
    .locals 0
    .param p1, "systemUIVisible"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mSystemUIVisible:Z

    .line 181
    return-void
.end method

.method public setTintNavigationBar(Z)V
    .locals 0
    .param p1, "mTintNavigationBar"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTintNavigationBar:Z

    .line 173
    return-void
.end method

.method public setTintStatusBar(Z)V
    .locals 0
    .param p1, "mTintStatusBar"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->mTintStatusBar:Z

    .line 163
    return-void
.end method
