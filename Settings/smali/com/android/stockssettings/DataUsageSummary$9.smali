.class Lcom/android/stockssettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/stockssettings/DataUsageSummary$9;->this$0:Lcom/android/stockssettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1213
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/DataUsageSummary$AppItem;

    .line 1216
    .local v0, "app":Lcom/android/stockssettings/DataUsageSummary$AppItem;
    iget-object v3, p0, Lcom/android/stockssettings/DataUsageSummary$9;->this$0:Lcom/android/stockssettings/DataUsageSummary;

    # getter for: Lcom/android/stockssettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stockssettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/stockssettings/DataUsageSummary;->access$1300(Lcom/android/stockssettings/DataUsageSummary;)Lcom/android/stockssettings/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v3, p0, Lcom/android/stockssettings/DataUsageSummary$9;->this$0:Lcom/android/stockssettings/DataUsageSummary;

    # getter for: Lcom/android/stockssettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stockssettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/stockssettings/DataUsageSummary;->access$1300(Lcom/android/stockssettings/DataUsageSummary;)Lcom/android/stockssettings/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/android/stockssettings/DataUsageSummary$AppItem;->key:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/stockssettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/stockssettings/net/UidDetail;

    move-result-object v2

    .line 1219
    .local v2, "detail":Lcom/android/stockssettings/net/UidDetail;
    iget-object v3, p0, Lcom/android/stockssettings/DataUsageSummary$9;->this$0:Lcom/android/stockssettings/DataUsageSummary;

    iget-object v4, v2, Lcom/android/stockssettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/android/stockssettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/stockssettings/DataUsageSummary;Lcom/android/stockssettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
