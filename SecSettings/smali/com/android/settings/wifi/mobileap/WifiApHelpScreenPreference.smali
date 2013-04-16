.class public Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHelpScreenPreference.java"


# instance fields
.field private mMaxClient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    .line 40
    const v0, 0x7f040116

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    const v2, 0x7f0b034f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, tetherImg:Landroid/widget/ImageView;
    const v2, 0x7f0b00f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f0202d0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    const v2, 0x7f090311

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    return-void
.end method
