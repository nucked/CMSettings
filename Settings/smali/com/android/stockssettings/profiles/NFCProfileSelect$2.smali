.class Lcom/android/stockssettings/profiles/NFCProfileSelect$2;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/profiles/NFCProfileSelect;->showProfileSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/profiles/NFCProfileSelect;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/profiles/NFCProfileSelect;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/stockssettings/profiles/NFCProfileSelect$2;->this$0:Lcom/android/stockssettings/profiles/NFCProfileSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/stockssettings/profiles/NFCProfileSelect$2;->this$0:Lcom/android/stockssettings/profiles/NFCProfileSelect;

    # setter for: Lcom/android/stockssettings/profiles/NFCProfileSelect;->currentChoice:I
    invoke-static {v0, p2}, Lcom/android/stockssettings/profiles/NFCProfileSelect;->access$002(Lcom/android/stockssettings/profiles/NFCProfileSelect;I)I

    .line 94
    return-void
.end method
