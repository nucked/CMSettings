.class Lcom/android/stockssettings/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/stockssettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/stockssettings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/stockssettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/stockssettings/inputmethod/InputMethodPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/stockssettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/stockssettings/inputmethod/InputMethodPreference;

    # getter for: Lcom/android/stockssettings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/stockssettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    invoke-static {v0}, Lcom/android/stockssettings/inputmethod/InputMethodPreference;->access$000(Lcom/android/stockssettings/inputmethod/InputMethodPreference;)Lcom/android/stockssettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stockssettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/stockssettings/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/android/stockssettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/stockssettings/inputmethod/InputMethodPreference;)V

    .line 229
    iget-object v0, p0, Lcom/android/stockssettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/stockssettings/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/stockssettings/inputmethod/InputMethodPreference;->notifyChanged()V
    invoke-static {v0}, Lcom/android/stockssettings/inputmethod/InputMethodPreference;->access$100(Lcom/android/stockssettings/inputmethod/InputMethodPreference;)V

    .line 230
    return-void
.end method
