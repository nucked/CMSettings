.class Lcom/android/stockssettings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/stockssettings/deviceinfo/Status$2;->this$0:Lcom/android/stockssettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/stockssettings/deviceinfo/Status$2;->this$0:Lcom/android/stockssettings/deviceinfo/Status;

    # invokes: Lcom/android/stockssettings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/stockssettings/deviceinfo/Status;->access$400(Lcom/android/stockssettings/deviceinfo/Status;)V

    .line 229
    iget-object v0, p0, Lcom/android/stockssettings/deviceinfo/Status$2;->this$0:Lcom/android/stockssettings/deviceinfo/Status;

    # invokes: Lcom/android/stockssettings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/stockssettings/deviceinfo/Status;->access$500(Lcom/android/stockssettings/deviceinfo/Status;)V

    .line 230
    return-void
.end method
