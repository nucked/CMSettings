.class Lcom/android/stockssettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/stockssettings/inputmethod/SpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$sci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/stockssettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/stockssettings/inputmethod/SpellCheckersSettings$2;->val$sci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/stockssettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/stockssettings/inputmethod/SpellCheckersSettings$2;->val$sci:Landroid/view/textservice/SpellCheckerInfo;

    # invokes: Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    invoke-static {v0, v1}, Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;->access$300(Lcom/android/stockssettings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 218
    return-void
.end method
