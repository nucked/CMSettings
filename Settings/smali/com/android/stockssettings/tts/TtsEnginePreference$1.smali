.class Lcom/android/stockssettings/tts/TtsEnginePreference$1;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/tts/TtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/tts/TtsEnginePreference;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/stockssettings/tts/TtsEnginePreference$1;->this$0:Lcom/android/stockssettings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/stockssettings/tts/TtsEnginePreference$1;->this$0:Lcom/android/stockssettings/tts/TtsEnginePreference;

    # invokes: Lcom/android/stockssettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/stockssettings/tts/TtsEnginePreference;->access$000(Lcom/android/stockssettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 94
    return-void
.end method
