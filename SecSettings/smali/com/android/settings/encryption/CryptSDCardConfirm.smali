.class public Lcom/android/settings/encryption/CryptSDCardConfirm;
.super Landroid/app/Fragment;
.source "CryptSDCardConfirm.java"


# static fields
.field private static final FULL_DIR_ENC_ENABLED:Z


# instance fields
.field private DEBUG:Z

.field private mButtonEncSdCard:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mParent:Landroid/app/Activity;

.field private mPassword:Ljava/lang/String;

.field private mSdCardEncMessageTitle:Landroid/widget/TextView;

.field private mSdCardEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "true"

    const-string v1, "ro.sec.fle.encryption"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/encryption/CryptSDCardConfirm;->FULL_DIR_ENC_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->DEBUG:Z

    .line 47
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 48
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 50
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mButtonEncSdCard:Landroid/widget/Button;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardConfirm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardConfirm;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/encryption/CryptSDCardConfirm;->applySDEncryption(Ljava/lang/String;)V

    return-void
.end method

.method private applySDEncryption(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 152
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/dirEncryption/DirEncryptionManager;->encryptStorage(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 158
    :cond_0
    return-void
.end method

.method private restoreUI()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, fullText:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v2, v4, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    const v3, 0x7f090991

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090993

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090997

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090995

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09099b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090998

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090999

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09099a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    const v3, 0x7f090992

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090994

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    sget-boolean v2, Lcom/android/settings/encryption/CryptSDCardConfirm;->FULL_DIR_ENC_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v2, v4, :cond_1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090996

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09099c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    .line 76
    const-string v0, "CryptSDCardEncStatus"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 81
    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    .line 83
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 85
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mButtonEncSdCard:Landroid/widget/Button;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 92
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enc"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 93
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fullEnc"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 94
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "excludeMedia"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 96
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mButtonEncSdCard:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardConfirm$1;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardConfirm$1;-><init>(Lcom/android/settings/encryption/CryptSDCardConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->restoreUI()V

    .line 65
    return-void
.end method
