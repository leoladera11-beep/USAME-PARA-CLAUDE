.class final Lcom/brisa/local/VideoChrome$Icon;
.super Landroid/view/View;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/VideoChrome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Icon"
.end annotation


# instance fields
.field final kind:I

.field final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 266
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 265
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    .line 266
    iput p2, p0, Lcom/brisa/local/VideoChrome$Icon;->kind:I

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$Icon;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$Icon;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$Icon;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 268
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$Icon;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42400000    # 48.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$Icon;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 269
    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x78000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41a80000    # 21.0f

    iget-object v2, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 270
    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget v1, p0, Lcom/brisa/local/VideoChrome$Icon;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x41000000    # 8.0f

    iget-object v2, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p1, v6, v6, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    const/16 v1, 0x8

    if-ge v7, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v1, v7, 0x2d

    int-to-float v1, v1

    invoke-virtual {p1, v1, v6, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v4, 0x41800000    # 16.0f

    iget-object v5, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41c00000    # 24.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget v0, p0, Lcom/brisa/local/VideoChrome$Icon;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/high16 v4, 0x41c00000    # 24.0f

    iget-object v5, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x42040000    # 33.0f

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41700000    # 15.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41800000    # 16.0f

    iget-object v5, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x42000000    # 32.0f

    iget-object v5, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$Icon;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 274
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 275
    return-void

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40400000    # 3.0f
    .end array-data
.end method
