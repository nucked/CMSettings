.class Lcom/android/stockssettings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/stockssettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/widget/SwitchBar;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/stockssettings/widget/SwitchBar$1;->this$0:Lcom/android/stockssettings/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/stockssettings/widget/SwitchBar$1;->this$0:Lcom/android/stockssettings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/stockssettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 100
    return-void
.end method
