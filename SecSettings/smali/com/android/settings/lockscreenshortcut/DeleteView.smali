.class public Lcom/android/settings/lockscreenshortcut/DeleteView;
.super Landroid/widget/ImageView;
.source "DeleteView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static TEXT_SIZE:I


# instance fields
.field final kLidUpHeight:I

.field private mAngleDirection:F

.field mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsLandscape:Z

.field private mIsNormalTrashIcon:Z

.field private mIsOnDeleting:Z

.field private mIsTablet:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mNormalTrash:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousLidShakeValue:F

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xe

    sput v0, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 326
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 354
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 66
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 326
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 354
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 71
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 326
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 354
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 76
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/DeleteView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    return p1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 5
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "bounds"
    .parameter "alpha"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 168
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 170
    .local v1, dy:I
    iget-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget v2, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    return-void

    .line 173
    :cond_0
    sget v2, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 188
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    const/high16 v1, 0x4040

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, -0x100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 190
    sget v1, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    return-object v0
.end method

.method private getTrashCanLidAngle()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const v3, 0x7f020297

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    .line 84
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 87
    const v2, 0x7f020299

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    .line 90
    const v2, 0x7f020298

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    .line 93
    const v2, 0x7f02029a

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    .line 96
    const v2, 0x7f02029b

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    .line 99
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 107
    return-void
.end method

.method private isTrashCanShakeMode()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method private setTrashCanFillAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 215
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    .line 216
    return-void
.end method

.method private setTrashCanLidAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 239
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 240
    return-void
.end method

.method private setTrashCanLidOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 235
    iput p2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 236
    return-void
.end method

.method private setTrashCanShakeMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 220
    return-void
.end method

.method private startAnimator(IJ)V
    .locals 2
    .parameter "animatorId"
    .parameter "startDelay"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 252
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 254
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 255
    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    .line 256
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 120
    .local v3, r:Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v5, :cond_4

    .line 126
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 127
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 130
    .local v1, lidCenterX:I
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 131
    .local v2, lidCenterY:I
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v5, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    .line 133
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v2, v5, 0x5

    .line 136
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    if-eqz v5, :cond_3

    .line 137
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 141
    :goto_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    .end local v1           #lidCenterX:I
    .end local v2           #lidCenterY:I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 155
    .local v4, width:I
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 157
    .local v0, height:I
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v5, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x6

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    .line 164
    :goto_2
    return-void

    .line 139
    .end local v0           #height:I
    .end local v4           #width:I
    .restart local v1       #lidCenterX:I
    .restart local v2       #lidCenterY:I
    :cond_3
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 145
    .end local v1           #lidCenterX:I
    .end local v2           #lidCenterY:I
    :cond_4
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    .line 146
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 148
    :cond_5
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 160
    .restart local v0       #height:I
    .restart local v4       #width:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    sget v7, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const v2, 0x7f0907d5

    .line 195
    if-gez p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 199
    .local v7, length:I
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int p2, v0, v2

    .line 200
    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 201
    div-int/lit8 v2, v7, 0x2

    int-to-float v4, p2

    sget v0, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    add-int/2addr v0, p3

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 207
    .end local v1           #text:Ljava/lang/String;
    .end local v7           #length:I
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getTextWidth()I
    .locals 4

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0907d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 182
    .local v0, width:I
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 409
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 405
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 413
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 401
    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 228
    return-void
.end method

.method public setFadeOutTrashCan(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 467
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 472
    return-void
.end method

.method public setNormalTrashIcon()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 485
    return-void
.end method

.method public setOrienationMode(Z)V
    .locals 0
    .parameter "isLandscape"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 111
    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 210
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    .line 211
    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 384
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 385
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 387
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 4
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f80

    .line 339
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 342
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    .line 347
    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 9
    .parameter "value"

    .prologue
    const/high16 v8, 0x4100

    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    .line 357
    const/high16 v2, 0x4100

    .line 358
    .local v2, kHalfCycles:F
    mul-float/2addr p1, v8

    .line 359
    const/high16 v3, 0x4140

    .line 360
    .local v3, kShakeMaxAngle:F
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTrashCanLidAngle()F

    move-result v0

    .line 361
    .local v0, angle:F
    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 362
    .local v1, dv:F
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    .line 363
    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 364
    cmpl-float v4, v0, v5

    if-lez v4, :cond_2

    .line 365
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 366
    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 372
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 374
    cmpl-float v4, p1, v8

    if-ltz v4, :cond_1

    .line 377
    :cond_1
    return-void

    .line 368
    :cond_2
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 369
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 370
    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x3f80

    .line 328
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 330
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    .line 332
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 336
    :cond_0
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 392
    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 394
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 396
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    if-nez v0, :cond_0

    .line 477
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public startTrashCanFillUnfillAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 416
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 417
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 421
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 424
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 428
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 430
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 433
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 434
    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$2;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$2;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 457
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 460
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 461
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 462
    return-void
.end method

.method public startTrashCanShakeAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3c

    const/4 v4, 0x0

    .line 260
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 261
    const/high16 v3, 0x3f80

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 262
    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 263
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    .line 264
    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060004

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 269
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060003

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 278
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060002

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 282
    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$1;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$1;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 305
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 306
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 310
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 311
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    .line 313
    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 319
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 320
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 321
    return-void
.end method
