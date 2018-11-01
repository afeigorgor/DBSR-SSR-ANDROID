.class public final Lcom/github/shadowsocks/preferences/NumberPickerPreference;
.super Landroid/preference/DialogPreference;
.source "NumberPickerPreference.scala"

# interfaces
.implements Lcom/github/shadowsocks/preferences/SummaryPreference;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final picker:Landroid/widget/NumberPicker;

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p0}, Lcom/github/shadowsocks/preferences/SummaryPreference$class;->$init$(Lcom/github/shadowsocks/preferences/SummaryPreference;)V

    .line 17
    new-instance v1, Landroid/widget/NumberPicker;

    invoke-direct {v1, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker:Landroid/widget/NumberPicker;

    .line 21
    sget-object v1, Lcom/github/shadowsocks/R$styleable;->NumberPickerPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->setMin(I)V

    .line 23
    const v1, 0x7ffffffe

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->setMax(I)V

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private picker()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method private value()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->value:I

    return v0
.end method

.method private value_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->value:I

    return-void
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$preferences$SummaryPreference$$super$getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-static {p0}, Lcom/github/shadowsocks/preferences/SummaryPreference$class;->getSummary(Lcom/github/shadowsocks/preferences/SummaryPreference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->value()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateDialogView()Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->onCreateDialogView()Landroid/widget/NumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogView()Landroid/widget/NumberPicker;
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v1

    return-object v1
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 51
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 54
    .local v0, "value":I
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->setValue(I)V

    .line 59
    .end local v0    # "value":I
    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->getMin()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "default":I
    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->getPersistedInt(I)I

    move-result v0

    .end local v0    # "default":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->setValue(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 33
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->picker()Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->value_$eq(I)V

    .line 34
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->persistInt(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public showDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
