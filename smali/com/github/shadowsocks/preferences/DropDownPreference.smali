.class public final Lcom/github/shadowsocks/preferences/DropDownPreference;
.super Landroid/preference/Preference;
.source "DropDownPreference.scala"

# interfaces
.implements Lcom/github/shadowsocks/preferences/SummaryPreference;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final a:Landroid/content/res/TypedArray;

.field private final com$github$shadowsocks$preferences$DropDownPreference$$mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex:I

.field private final mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mSpinner:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mContext:Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p0}, Lcom/github/shadowsocks/preferences/SummaryPreference$class;->$init$(Lcom/github/shadowsocks/preferences/SummaryPreference;)V

    .line 20
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mAdapter:Landroid/widget/ArrayAdapter;

    .line 21
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex:I

    .line 26
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setVisibility(I)V

    .line 27
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 28
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;-><init>(Lcom/github/shadowsocks/preferences/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 35
    new-instance v0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$1;-><init>(Lcom/github/shadowsocks/preferences/DropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 41
    sget-object v0, Lcom/github/shadowsocks/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->a:Landroid/content/res/TypedArray;

    .line 42
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->a()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->a()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->a()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex:I

    return-void
.end method

.method private mEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private mEntries_$eq([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/CharSequence;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method private mEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private mEntryValues_$eq([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/CharSequence;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method private mSpinner()Landroid/support/v7/widget/AppCompatSpinner;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->a:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method public com$github$shadowsocks$preferences$DropDownPreference$$getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public com$github$shadowsocks$preferences$DropDownPreference$$mAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex:I

    return v0
.end method

.method public final com$github$shadowsocks$preferences$DropDownPreference$$onPreferenceClick$body$1(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->performClick()Z

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public com$github$shadowsocks$preferences$DropDownPreference$$setValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p2}, Lcom/github/shadowsocks/preferences/DropDownPreference;->persistString(Ljava/lang/String;)Z

    .line 111
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex_$eq(I)V

    .line 112
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 113
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public synthetic com$github$shadowsocks$preferences$SummaryPreference$$super$getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 142
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 144
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->getValueIndex()I

    move-result v0

    .line 130
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    .line 128
    :goto_0
    return-object v1

    .line 130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/github/shadowsocks/preferences/SummaryPreference$class;->getSummary(Lcom/github/shadowsocks/preferences/SummaryPreference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSummaryValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->getSummaryValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex()I

    move-result v0

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 161
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    .local v1, "parent":Landroid/view/ViewGroup;
    if-ne p1, v1, :cond_0

    .line 167
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 163
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 165
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 166
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 167
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mSpinner()Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x$1"    # Landroid/content/res/TypedArray;
    .param p2, "x$2"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/preferences/DropDownPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/github/shadowsocks/preferences/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void

    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic protected$callChangeListener(Lcom/github/shadowsocks/preferences/DropDownPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p1, p2}, Lcom/github/shadowsocks/preferences/DropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntries_$eq([Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 59
    if-eqz p1, :cond_0

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v0, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$setEntries$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$setEntries$1;-><init>(Lcom/github/shadowsocks/preferences/DropDownPreference;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->mEntryValues_$eq([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$setValue(ILjava/lang/String;)V

    return-void
.end method
