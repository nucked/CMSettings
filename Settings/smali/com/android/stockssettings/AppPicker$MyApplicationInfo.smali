.class Lcom/android/stockssettings/AppPicker$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/stockssettings/AppPicker;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/AppPicker;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/stockssettings/AppPicker$MyApplicationInfo;->this$0:Lcom/android/stockssettings/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
