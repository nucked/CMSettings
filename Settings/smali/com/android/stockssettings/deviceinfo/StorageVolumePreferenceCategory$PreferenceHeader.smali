.class public Lcom/android/stockssettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
.super Landroid/preference/Preference;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceHeader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleRes"    # I

    .prologue
    .line 594
    const/4 v0, 0x0

    const v1, 0x101008c

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 595
    invoke-virtual {p0, p2}, Lcom/android/stockssettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;->setTitle(I)V

    .line 596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 599
    const/4 v0, 0x0

    const v1, 0x101008c

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 600
    invoke-virtual {p0, p2}, Lcom/android/stockssettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;->setTitle(Ljava/lang/CharSequence;)V

    .line 601
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method
