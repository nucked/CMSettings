.class final Lcom/android/stockssettings/bluetooth/BluetoothSettings$4;
.super Lcom/android/stockssettings/search/BaseSearchIndexProvider;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/android/stockssettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/stockssettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f09056e

    .line 605
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/stockssettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 610
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/stockssettings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/stockssettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 611
    .local v1, "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 612
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 613
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-static {p1}, Lcom/android/stockssettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/stockssettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    .line 619
    .local v4, "lbtm":Lcom/android/stockssettings/bluetooth/LocalBluetoothManager;
    if-eqz v4, :cond_0

    .line 620
    invoke-virtual {v4}, Lcom/android/stockssettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 623
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 624
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Lcom/android/stockssettings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/stockssettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 625
    .restart local v1    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 626
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 627
    iput-boolean p2, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->enabled:Z

    .line 628
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v6
.end method
