.class Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "bondState":I
    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;

    # getter for: Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z
    invoke-static {v3}, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3}, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 92
    .end local v1    # "bondState":I
    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    const-string v3, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 88
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;

    # getter for: Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;->access$100(Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    :cond_4
    iget-object v3, p0, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3}, Lcom/android/stockssettings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0
.end method
