.class Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog$2;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog$2;->this$0:Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog$2;->this$0:Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;

    # getter for: Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;->access$100(Lcom/android/stockssettings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    return-void
.end method