.class public Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1810
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/stockssettings/DataUsageSummary;Lcom/android/stockssettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "parent"    # Lcom/android/stockssettings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/stockssettings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/android/stockssettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1828
    :goto_0
    return-void

    .line 1816
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1817
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1819
    new-instance v1, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1820
    .local v1, "fragment":Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1821
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1822
    invoke-virtual {p0}, Lcom/android/stockssettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1823
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1824
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1825
    invoke-virtual {p0}, Lcom/android/stockssettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1827
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1832
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1833
    invoke-virtual {p0}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/DataUsageSummary;

    .line 1834
    .local v0, "target":Lcom/android/stockssettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/stockssettings/DataUsageSummary$AppItem;

    # setter for: Lcom/android/stockssettings/DataUsageSummary;->mCurrentApp:Lcom/android/stockssettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/stockssettings/DataUsageSummary;->access$2802(Lcom/android/stockssettings/DataUsageSummary;Lcom/android/stockssettings/DataUsageSummary$AppItem;)Lcom/android/stockssettings/DataUsageSummary$AppItem;

    .line 1835
    # invokes: Lcom/android/stockssettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/stockssettings/DataUsageSummary;->access$100(Lcom/android/stockssettings/DataUsageSummary;)V

    .line 1836
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1840
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1841
    invoke-virtual {p0}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/DataUsageSummary;

    .line 1842
    .local v0, "target":Lcom/android/stockssettings/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/android/stockssettings/DataUsageSummary;->mCurrentApp:Lcom/android/stockssettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/stockssettings/DataUsageSummary;->access$2802(Lcom/android/stockssettings/DataUsageSummary;Lcom/android/stockssettings/DataUsageSummary$AppItem;)Lcom/android/stockssettings/DataUsageSummary$AppItem;

    .line 1843
    # invokes: Lcom/android/stockssettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/stockssettings/DataUsageSummary;->access$100(Lcom/android/stockssettings/DataUsageSummary;)V

    .line 1844
    return-void
.end method
