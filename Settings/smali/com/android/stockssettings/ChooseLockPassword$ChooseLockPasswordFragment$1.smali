.class Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/stockssettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 138
    :cond_0
    return-void
.end method
