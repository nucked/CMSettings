.class Lcom/android/stockssettings/location/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/stockssettings/location/LocationSettings$1;->this$0:Lcom/android/stockssettings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/preference/Preference;Landroid/preference/Preference;)I
    .locals 2
    .param p1, "lhs"    # Landroid/preference/Preference;
    .param p2, "rhs"    # Landroid/preference/Preference;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 145
    check-cast p1, Landroid/preference/Preference;

    check-cast p2, Landroid/preference/Preference;

    invoke-virtual {p0, p1, p2}, Lcom/android/stockssettings/location/LocationSettings$1;->compare(Landroid/preference/Preference;Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method
