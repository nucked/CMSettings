.class Lcom/android/stockssettings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/stockssettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/stockssettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/stockssettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/stockssettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/stockssettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lcom/android/stockssettings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/stockssettings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 596
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/stockssettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/stockssettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/stockssettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lcom/android/stockssettings/wfd/WifiDisplaySettings;->access$1002(Lcom/android/stockssettings/wfd/WifiDisplaySettings;I)I

    .line 597
    iget-object v1, p0, Lcom/android/stockssettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/stockssettings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/stockssettings/wfd/WifiDisplaySettings;->update(I)V
    invoke-static {v1, v0}, Lcom/android/stockssettings/wfd/WifiDisplaySettings;->access$1100(Lcom/android/stockssettings/wfd/WifiDisplaySettings;I)V

    .line 598
    return-void
.end method
