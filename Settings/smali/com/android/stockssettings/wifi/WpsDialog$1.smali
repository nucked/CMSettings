.class Lcom/android/stockssettings/wifi/WpsDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/stockssettings/wifi/WpsDialog$1;->this$0:Lcom/android/stockssettings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WpsDialog$1;->this$0:Lcom/android/stockssettings/wifi/WpsDialog;

    # invokes: Lcom/android/stockssettings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/stockssettings/wifi/WpsDialog;->access$200(Lcom/android/stockssettings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    return-void
.end method
