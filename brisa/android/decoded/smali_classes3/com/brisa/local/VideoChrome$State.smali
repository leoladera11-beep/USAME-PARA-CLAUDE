.class final Lcom/brisa/local/VideoChrome$State;
.super Landroid/widget/FrameLayout;
.source "VideoChrome.java"

# interfaces
.implements Lcom/brisa/local/VideoGestureEngine$Host;
.implements Lcom/brisa/local/VideoGestureEngine$Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/VideoChrome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# static fields
.field private static final NATIVE_CONTROLS:[Ljava/lang/String;


# instance fields
.field final activity:Landroid/app/Activity;

.field final back:Lcom/brisa/local/VideoChrome$Icon;

.field boosting:Z

.field captured:Z

.field final clearFeedback:Ljava/lang/Runnable;

.field final controller:Landroid/view/View;

.field controlsVisible:Z

.field final feedback:Landroid/widget/TextView;

.field final fullscreen:Lcom/brisa/local/VideoChrome$Icon;

.field final gestures:Lcom/brisa/local/VideoGestureEngine;

.field final hide:Ljava/lang/Runnable;

.field nativeTouch:Z

.field final player:Landroid/view/View;

.field final settings:Lcom/brisa/local/VideoChrome$Icon;

.field final top:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "exo_play_pause"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exo_prev"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "exo_next"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exo_rew"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exo_ffwd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "exo_rew_with_amount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "exo_ffwd_with_amount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "exo_progress"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exo_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exo_subtitle"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "exo_repeat_toggle"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exo_shuffle"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "exo_fullscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exo_minimal_fullscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exo_vr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "exo_overflow_show"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "exo_overflow_hide"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "exo_mute"

    aput-object v2, v0, v1

    sput-object v0, Lcom/brisa/local/VideoChrome$State;->NATIVE_CONTROLS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 9

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->controlsVisible:Z

    .line 133
    new-instance v1, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/VideoChrome$State;)V

    iput-object v1, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    .line 134
    new-instance v1, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda1;-><init>(Lcom/brisa/local/VideoChrome$State;)V

    iput-object v1, p0, Lcom/brisa/local/VideoChrome$State;->clearFeedback:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/brisa/local/VideoChrome$State;->player:Landroid/view/View;

    .line 138
    const-string v1, "l"

    invoke-static {p2, v1}, Lcom/brisa/local/VideoChrome;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/brisa/local/VideoChrome$State;->controller:Landroid/view/View;

    .line 139
    const-string p2, "brisa-video-chrome"

    invoke-virtual {p0, p2}, Lcom/brisa/local/VideoChrome$State;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/brisa/local/VideoChrome$State;->setClickable(Z)V

    .line 140
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    .line 141
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x38

    invoke-static {p1, v2}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 142
    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5, v1}, Lcom/brisa/local/VideoChrome$State;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Lcom/brisa/local/VideoChrome$Icon;

    const/4 v5, 0x2

    invoke-direct {v1, p1, v5}, Lcom/brisa/local/VideoChrome$Icon;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/brisa/local/VideoChrome$State;->back:Lcom/brisa/local/VideoChrome$Icon;

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->back:Lcom/brisa/local/VideoChrome$Icon;

    const-string v6, "Salir del v\u00eddeo"

    invoke-virtual {v1, v6}, Lcom/brisa/local/VideoChrome$Icon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v6

    invoke-static {p1, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v7

    const/16 v8, 0x33

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 145
    invoke-static {p1, v2}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/brisa/local/VideoChrome$State;->back:Lcom/brisa/local/VideoChrome$Icon;

    invoke-virtual {v6, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v6, Lcom/brisa/local/VideoChrome$Icon;

    invoke-direct {v6, p1, v0}, Lcom/brisa/local/VideoChrome$Icon;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/brisa/local/VideoChrome$State;->settings:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Lcom/brisa/local/VideoChrome$Icon;

    invoke-direct {v0, p1, p2}, Lcom/brisa/local/VideoChrome$Icon;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/brisa/local/VideoChrome$State;->fullscreen:Lcom/brisa/local/VideoChrome$Icon;

    .line 148
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->settings:Lcom/brisa/local/VideoChrome$Icon;

    const-string v0, "Ajustes del v\u00eddeo"

    invoke-virtual {p2, v0}, Lcom/brisa/local/VideoChrome$Icon;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->fullscreen:Lcom/brisa/local/VideoChrome$Icon;

    const-string v0, "Pantalla completa"

    invoke-virtual {p2, v0}, Lcom/brisa/local/VideoChrome$Icon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->settings:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v6

    invoke-static {p1, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->fullscreen:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v6

    invoke-static {p1, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v4

    invoke-direct {v0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x35

    const/4 v4, -0x2

    invoke-direct {p2, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 152
    invoke-static {p1, v2}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 161
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-static {p1, v1}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v6

    invoke-static {p1, v1}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {p1, v3}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v3

    invoke-virtual {p2, v2, v6, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x50000000

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x18

    invoke-static {p1, v1}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 165
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, v1}, Lcom/brisa/local/VideoChrome$State;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 167
    new-instance v0, Lcom/brisa/local/VideoGestureEngine;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v3, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    int-to-float v8, p2

    move-object v2, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/brisa/local/VideoGestureEngine;-><init>(Lcom/brisa/local/VideoGestureEngine$Host;Lcom/brisa/local/VideoGestureEngine$Scheduler;JJFF)V

    iput-object v0, v1, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    .line 168
    iget-object p2, v1, Lcom/brisa/local/VideoChrome$State;->back:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda3;-><init>(Lcom/brisa/local/VideoChrome$State;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/brisa/local/VideoChrome$Icon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p2, v1, Lcom/brisa/local/VideoChrome$State;->fullscreen:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda4;-><init>(Lcom/brisa/local/VideoChrome$State;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/brisa/local/VideoChrome$Icon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p2, v1, Lcom/brisa/local/VideoChrome$State;->settings:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda5;-><init>(Lcom/brisa/local/VideoChrome$State;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/brisa/local/VideoChrome$Icon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private controlAt(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 215
    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->back:Lcom/brisa/local/VideoChrome$Icon;

    invoke-direct {p0, v1, v0, p1}, Lcom/brisa/local/VideoChrome$State;->hit(Landroid/view/View;FF)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->settings:Lcom/brisa/local/VideoChrome$Icon;

    invoke-direct {p0, v1, v0, p1}, Lcom/brisa/local/VideoChrome$State;->hit(Landroid/view/View;FF)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->fullscreen:Lcom/brisa/local/VideoChrome$Icon;

    invoke-direct {p0, v1, v0, p1}, Lcom/brisa/local/VideoChrome$State;->hit(Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    sget-object v1, Lcom/brisa/local/VideoChrome$State;->NATIVE_CONTROLS:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 217
    iget-object v7, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v6, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 218
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/brisa/local/VideoChrome$State;->player:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0, p1}, Lcom/brisa/local/VideoChrome$State;->hit(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    .line 216
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    :cond_2
    return v4

    .line 215
    :cond_3
    :goto_1
    return v2
.end method

.method private hit(Landroid/view/View;FF)Z
    .locals 3

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$new$2(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 154
    nop

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 156
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->top:I

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    .line 157
    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    .line 158
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method cancelInteraction()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {v0}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->nativeTouch:Z

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->boosting:Z

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->clearFeedback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    return-void
.end method

.method clearFeedbackNow()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public duration()J
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->nativePlayer()LG/g0;

    move-result-object v0

    invoke-interface {v0}, LG/g0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method hideControls()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->controlsVisible:Z

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->syncControls()V

    return-void
.end method

.method public holding(Z)V
    .locals 1

    .line 186
    iput-boolean p1, p0, Lcom/brisa/local/VideoChrome$State;->boosting:Z

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    if-eqz p1, :cond_0

    const-string p1, "2\u00d7"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/brisa/local/VideoChrome$State;->showFeedback(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->clearFeedback:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_0
    return-void
.end method

.method public interacted()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->controlsVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->boosting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->nativeTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/brisa/local/VideoChrome$State;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-brisa-local-VideoChrome$State()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->hideControls()V

    return-void
.end method

.method synthetic lambda$new$1$com-brisa-local-VideoChrome$State()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->clearFeedbackNow()V

    return-void
.end method

.method synthetic lambda$new$3$com-brisa-local-VideoChrome$State(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->cancelInteraction()V

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Class;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "f"

    invoke-static {p1, v1, v0, p2}, Lcom/brisa/local/VideoChrome;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$new$4$com-brisa-local-VideoChrome$State(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p2}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {p1}, Lcom/brisa/local/VideoChrome;->access$400(Landroid/app/Activity;)Z

    move-result v1

    xor-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "e"

    invoke-static {p1, v1, v0, p2}, Lcom/brisa/local/VideoChrome;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$new$5$com-brisa-local-VideoChrome$State()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->interacted()V

    return-void
.end method

.method synthetic lambda$new$6$com-brisa-local-VideoChrome$State(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p2}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->settings:Lcom/brisa/local/VideoChrome$Icon;

    new-instance v0, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/brisa/local/VideoChrome$State$$ExternalSyntheticLambda6;-><init>(Lcom/brisa/local/VideoChrome$State;)V

    invoke-static {p1, p2, v0}, Lcom/brisa/local/VideoChrome;->access$300(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public later(Ljava/lang/Runnable;J)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/brisa/local/VideoChrome$State;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method nativePlayer()LG/g0;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/brisa/local/VideoChrome;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/g0;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->cancelInteraction()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public position()J
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->nativePlayer()LG/g0;

    move-result-object v0

    invoke-interface {v0}, LG/g0;->O0()J

    move-result-wide v0

    return-wide v0
.end method

.method public ready()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->nativePlayer()LG/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method route(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 225
    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/brisa/local/VideoChrome$State;->controlAt(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->nativeTouch:Z

    .line 227
    iget-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->nativeTouch:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p1}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    iput-boolean v2, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    return v2

    .line 228
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 229
    iget-object v3, p0, Lcom/brisa/local/VideoChrome$State;->player:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    .line 230
    iget-boolean v1, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/brisa/local/VideoGestureEngine;->down(FFFJ)V

    .line 231
    :cond_3
    iget-boolean p1, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    return p1

    .line 233
    :cond_4
    iget-boolean v3, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    const/4 v4, 0x3

    if-nez v3, :cond_7

    .line 234
    if-eq v0, v1, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    iput-boolean v2, p0, Lcom/brisa/local/VideoChrome$State;->nativeTouch:Z

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->interacted()V

    .line 235
    :cond_6
    return v2

    .line 237
    :cond_7
    const/4 v3, 0x2

    new-array v5, v3, [I

    iget-object v6, p0, Lcom/brisa/local/VideoChrome$State;->player:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v2, v5, v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    aget v2, v5, v1

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {v0, v3, p1}, Lcom/brisa/local/VideoGestureEngine;->move(FF)V

    goto :goto_0

    .line 239
    :cond_8
    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v5, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v5, v1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/brisa/local/VideoGestureEngine;->up(FFJ)V

    iput-boolean v2, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    goto :goto_0

    .line 240
    :cond_9
    if-ne v0, v4, :cond_a

    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p1}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    iput-boolean v2, p0, Lcom/brisa/local/VideoChrome$State;->captured:Z

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->interacted()V

    goto :goto_0

    .line 241
    :cond_a
    const/4 p1, 0x5

    if-ne v0, p1, :cond_b

    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->gestures:Lcom/brisa/local/VideoGestureEngine;

    invoke-virtual {p1}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->interacted()V

    .line 242
    :cond_b
    :goto_0
    return v1
.end method

.method public seek(J)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->nativePlayer()LG/g0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LG/g0;->y0(J)V

    return-void
.end method

.method public seekFeedback(I)V
    .locals 2

    .line 183
    if-gez p1, :cond_0

    const-string v0, "\u221210 s"

    goto :goto_0

    :cond_0
    const-string v0, "+10 s"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/brisa/local/VideoChrome$State;->showFeedback(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->clearFeedback:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Lcom/brisa/local/VideoChrome$State;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method showControls()V
    .locals 1

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->controlsVisible:Z

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->syncControls()V

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->interacted()V

    return-void
.end method

.method showFeedback(Ljava/lang/String;I)V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->clearFeedback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 193
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    const/4 v1, 0x5

    if-nez p2, :cond_0

    const/16 v2, 0x31

    goto :goto_1

    :cond_0
    if-gez p2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/lit8 v2, v2, 0x10

    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lcom/brisa/local/VideoChrome;->access$100(Landroid/app/Activity;I)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gez p2, :cond_3

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-lez p2, :cond_4

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->getWidth()I

    move-result p2

    div-int/2addr p2, v1

    goto :goto_4

    :cond_4
    move p2, v2

    :goto_4
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 196
    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/brisa/local/VideoChrome$State;->feedback:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    return-void
.end method

.method public speed()F
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->nativePlayer()LG/g0;

    move-result-object v0

    invoke-interface {v0}, LG/g0;->g()LG/a0;

    move-result-object v0

    iget v0, v0, LG/a0;->a:F

    return v0
.end method

.method public speed(F)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->nativePlayer()LG/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LG/g0;->h(F)V

    :cond_0
    return-void
.end method

.method syncControls()V
    .locals 5

    .line 201
    iget-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->controlsVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 202
    :goto_0
    iget-object v3, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 203
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->player:Landroid/view/View;

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v0, v2, v3, v1}, Lcom/brisa/local/VideoChrome;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$State;->controller:Landroid/view/View;

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "g"

    invoke-static {v0, v3, v1, v2}, Lcom/brisa/local/VideoChrome;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :goto_2
    return-void
.end method

.method public toggleControls()V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/brisa/local/VideoChrome$State;->controlsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->hideControls()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->showControls()V

    :goto_0
    return-void
.end method
