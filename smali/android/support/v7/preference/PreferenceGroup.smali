.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;
.source "PreferenceGroup.java"


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    iput-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 59
    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 61
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 63
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Landroid/support/v7/preference/PreferenceGroup$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/PreferenceGroup$1;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 79
    sget-object v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 83
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method


# virtual methods
.method public getPreference(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 365
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 366
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 367
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method
