.class Lcom/android/stockssettings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/stockssettings/deviceinfo/Memory$3;->this$0:Lcom/android/stockssettings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/stockssettings/deviceinfo/Memory$3;->this$0:Lcom/android/stockssettings/deviceinfo/Memory;

    # invokes: Lcom/android/stockssettings/deviceinfo/Memory;->doUnmount()V
    invoke-static {v0}, Lcom/android/stockssettings/deviceinfo/Memory;->access$200(Lcom/android/stockssettings/deviceinfo/Memory;)V

    .line 324
    return-void
.end method