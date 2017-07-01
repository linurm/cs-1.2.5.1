.class public Lcom/google/android/gms/internal/cf;
.super Lcom/google/android/gms/internal/cn$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cf$a;,
        Lcom/google/android/gms/internal/cf$b;,
        Lcom/google/android/gms/internal/cf$c;
    }
.end annotation


# static fields
.field private static final of:I


# instance fields
.field private lN:Lcom/google/android/gms/internal/ex;

.field private final og:Landroid/app/Activity;

.field private oh:Lcom/google/android/gms/internal/ch;

.field private oi:Lcom/google/android/gms/internal/cj;

.field private oj:Lcom/google/android/gms/internal/cf$c;

.field private ok:Lcom/google/android/gms/internal/ck;

.field private ol:Z

.field private om:Landroid/widget/FrameLayout;

.field private on:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private oo:Z

.field private op:Z

.field private oq:Z

.field private or:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    #@4
    move-result v0

    #@5
    sput v0, Lcom/google/android/gms/internal/cf;->of:I

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cn$a;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oo:Z

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->op:Z

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oq:Z

    #@a
    iput-object p1, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@c
    return-void
.end method

.method private static a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@3
    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@6
    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@e
    const/16 v1, 0x9

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@13
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ch;)V
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const-string v1, "com.google.android.gms.ads.AdActivity"

    #@7
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    #@a
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    #@c
    iget-object v2, p1, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@e
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ev;->sz:Z

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ch;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/ch;)V

    #@16
    const/high16 v1, 0x80000

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    instance-of v1, p0, Landroid/app/Activity;

    #@1d
    if-nez v1, :cond_24

    #@1f
    const/high16 v1, 0x10000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    :cond_24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@27
    return-void
.end method

.method private aT()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_c

    #@8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->op:Z

    #@a
    if-eqz v0, :cond_d

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->op:Z

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@12
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_c

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@1a
    if-eqz v0, :cond_43

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->bY()V

    #@21
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@23
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oj:Lcom/google/android/gms/internal/cf$c;

    #@2a
    if-eqz v0, :cond_43

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->q(Z)V

    #@32
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oj:Lcom/google/android/gms/internal/cf$c;

    #@34
    iget-object v0, v0, Lcom/google/android/gms/internal/cf$c;->ou:Landroid/view/ViewGroup;

    #@36
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@38
    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->oj:Lcom/google/android/gms/internal/cf$c;

    #@3a
    iget v2, v2, Lcom/google/android/gms/internal/cf$c;->index:I

    #@3c
    iget-object v3, p0, Lcom/google/android/gms/internal/cf;->oj:Lcom/google/android/gms/internal/cf$c;

    #@3e
    iget-object v3, v3, Lcom/google/android/gms/internal/cf$c;->ot:Landroid/view/ViewGroup$LayoutParams;

    #@40
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@43
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@45
    if-eqz v0, :cond_c

    #@47
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@49
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@4b
    if-eqz v0, :cond_c

    #@4d
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@4f
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@51
    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->Z()V

    #@54
    goto :goto_c
.end method

.method private k(Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cf$a;
        }
    .end annotation

    #@0
    const/16 v3, 0x400

    #@2
    const/4 v12, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->ol:Z

    #@7
    if-nez v0, :cond_e

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@b
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    #@e
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@13
    move-result-object v0

    #@14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cf;->oq:Z

    #@16
    if-eqz v1, :cond_20

    #@18
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@1a
    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@1c
    iget-boolean v1, v1, Lcom/google/android/gms/internal/v;->ld:Z

    #@1e
    if-eqz v1, :cond_23

    #@20
    :cond_20
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    #@23
    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@25
    iget v1, v1, Lcom/google/android/gms/internal/ch;->orientation:I

    #@27
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cf;->setRequestedOrientation(I)V

    #@2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2c
    const/16 v3, 0xb

    #@2e
    if-lt v1, v3, :cond_38

    #@30
    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    #@32
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@35
    invoke-static {v0}, Lcom/google/android/gms/internal/eq;->a(Landroid/view/Window;)V

    #@38
    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/cf$b;

    #@3a
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@3c
    iget-object v3, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@3e
    iget-object v3, v3, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@40
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cf$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@43
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@45
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oq:Z

    #@47
    if-nez v0, :cond_e6

    #@49
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@4b
    const/high16 v1, -0x1000000

    #@4d
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    #@50
    :goto_50
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@52
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    #@57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->S()V

    #@5a
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@5c
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@5e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->cj()Z

    #@65
    move-result v3

    #@66
    if-eqz p1, :cond_110

    #@68
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@6a
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@6c
    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@6e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@71
    move-result-object v1

    #@72
    iget-object v5, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@74
    iget-object v5, v5, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@76
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ex;

    #@79
    move-result-object v0

    #@7a
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@7c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@7e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@81
    move-result-object v5

    #@82
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@84
    iget-object v8, v0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@86
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@88
    iget-object v9, v0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@8a
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@8c
    iget-object v11, v0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@8e
    move-object v6, v4

    #@8f
    move-object v7, v4

    #@90
    move v10, v2

    #@91
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;ZLcom/google/android/gms/internal/bd;)V

    #@94
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@99
    move-result-object v0

    #@9a
    new-instance v1, Lcom/google/android/gms/internal/cf$1;

    #@9c
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cf$1;-><init>(Lcom/google/android/gms/internal/cf;)V

    #@9f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ey$a;)V

    #@a2
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@a4
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@a6
    if-eqz v0, :cond_ef

    #@a8
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@aa
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@ac
    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@ae
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@b1
    :goto_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@b3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/cf;)V

    #@b6
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@b8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->getParent()Landroid/view/ViewParent;

    #@bb
    move-result-object v0

    #@bc
    if-eqz v0, :cond_c9

    #@be
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@c0
    if-eqz v1, :cond_c9

    #@c2
    check-cast v0, Landroid/view/ViewGroup;

    #@c4
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@c6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@c9
    :cond_c9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oq:Z

    #@cb
    if-eqz v0, :cond_d4

    #@cd
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@cf
    sget v1, Lcom/google/android/gms/internal/cf;->of:I

    #@d1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->setBackgroundColor(I)V

    #@d4
    :cond_d4
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@d6
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@d8
    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    #@db
    if-nez p1, :cond_e2

    #@dd
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@df
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->bZ()V

    #@e2
    :cond_e2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/cf;->i(Z)V

    #@e5
    return-void

    #@e6
    :cond_e6
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@e8
    sget v1, Lcom/google/android/gms/internal/cf;->of:I

    #@ea
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    #@ed
    goto/16 :goto_50

    #@ef
    :cond_ef
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@f1
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@f3
    if-eqz v0, :cond_108

    #@f5
    iget-object v5, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@f7
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@f9
    iget-object v6, v0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@fb
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@fd
    iget-object v7, v0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@ff
    const-string v8, "text/html"

    #@101
    const-string v9, "UTF-8"

    #@103
    move-object v10, v4

    #@104
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ex;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@107
    goto :goto_b1

    #@108
    :cond_108
    new-instance v0, Lcom/google/android/gms/internal/cf$a;

    #@10a
    const-string v1, "No URL or HTML to display in ad overlay."

    #@10c
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf$a;-><init>(Ljava/lang/String;)V

    #@10f
    throw v0

    #@110
    :cond_110
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@112
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@114
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@116
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@118
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@11a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->setContext(Landroid/content/Context;)V

    #@11d
    goto :goto_b1
.end method


# virtual methods
.method public S()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->ol:Z

    #@3
    return-void
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    #@0
    const/4 v2, -0x1

    #@1
    new-instance v0, Landroid/widget/FrameLayout;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@c
    const/high16 v1, -0x1000000

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    #@11
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@13
    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@18
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@1a
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    #@1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->S()V

    #@20
    iput-object p2, p0, Lcom/google/android/gms/internal/cf;->on:Landroid/webkit/WebChromeClient$CustomViewCallback;

    #@22
    return-void
.end method

.method public aQ()Lcom/google/android/gms/internal/cj;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@2
    return-object v0
.end method

.method public aR()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@3
    if-eqz v0, :cond_c

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@7
    iget v0, v0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cf;->setRequestedOrientation(I)V

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@e
    if-eqz v0, :cond_21

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@12
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->S()V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@1c
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@1f
    iput-object v2, p0, Lcom/google/android/gms/internal/cf;->om:Landroid/widget/FrameLayout;

    #@21
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->on:Landroid/webkit/WebChromeClient$CustomViewCallback;

    #@23
    if-eqz v0, :cond_2c

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->on:Landroid/webkit/WebChromeClient$CustomViewCallback;

    #@27
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    #@2a
    iput-object v2, p0, Lcom/google/android/gms/internal/cf;->on:Landroid/webkit/WebChromeClient$CustomViewCallback;

    #@2c
    :cond_2c
    return-void
.end method

.method public aS()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->ok:Lcom/google/android/gms/internal/ck;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    #@7
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cf;->i(Z)V

    #@b
    return-void
.end method

.method public b(IIII)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@6
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cf;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d
    :cond_d
    return-void
.end method

.method public c(IIII)V
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@3
    if-nez v0, :cond_24

    #@5
    new-instance v0, Lcom/google/android/gms/internal/cj;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ex;)V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@12
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@14
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cf;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ey;->r(Z)V

    #@24
    :cond_24
    return-void
.end method

.method public close()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@5
    return-void
.end method

.method public i(Z)V
    .registers 6

    #@0
    const/4 v3, -0x2

    #@1
    if-eqz p1, :cond_30

    #@3
    const/16 v0, 0x32

    #@5
    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/ck;

    #@7
    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@9
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ck;-><init>(Landroid/app/Activity;I)V

    #@c
    iput-object v1, p0, Lcom/google/android/gms/internal/cf;->ok:Lcom/google/android/gms/internal/ck;

    #@e
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@10
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@13
    const/16 v0, 0xa

    #@15
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@18
    if-eqz p1, :cond_33

    #@1a
    const/16 v0, 0xb

    #@1c
    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->ok:Lcom/google/android/gms/internal/ck;

    #@21
    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@23
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ch;->oB:Z

    #@25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ck;->j(Z)V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->ok:Lcom/google/android/gms/internal/ck;

    #@2c
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    return-void

    #@30
    :cond_30
    const/16 v0, 0x20

    #@32
    goto :goto_5

    #@33
    :cond_33
    const/16 v0, 0x9

    #@35
    goto :goto_1c
.end method

.method public j(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->ok:Lcom/google/android/gms/internal/ck;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->ok:Lcom/google/android/gms/internal/ck;

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ck;->j(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    if-eqz p1, :cond_a

    #@4
    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    #@6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    :cond_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oo:Z

    #@c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@e
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/google/android/gms/internal/ch;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ch;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@1a
    if-nez v0, :cond_32

    #@1c
    new-instance v0, Lcom/google/android/gms/internal/cf$a;

    #@1e
    const-string v1, "Could not get info for ad overlay."

    #@20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf$a;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
    :try_end_24
    .catch Lcom/google/android/gms/internal/cf$a; {:try_start_c .. :try_end_24} :catch_24

    #@24
    :catch_24
    move-exception v0

    #@25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf$a;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@2e
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@31
    :cond_31
    :goto_31
    return-void

    #@32
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@34
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@36
    if-eqz v0, :cond_71

    #@38
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@3a
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@3c
    iget-boolean v0, v0, Lcom/google/android/gms/internal/v;->lb:Z

    #@3e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oq:Z

    #@40
    :goto_40
    if-nez p1, :cond_62

    #@42
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@44
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@46
    if-eqz v0, :cond_4f

    #@48
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@4a
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@4c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->aa()V

    #@4f
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@51
    iget v0, v0, Lcom/google/android/gms/internal/ch;->oE:I

    #@53
    if-eq v0, v2, :cond_62

    #@55
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@57
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@59
    if-eqz v0, :cond_62

    #@5b
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@5d
    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@5f
    invoke-interface {v0}, Lcom/google/android/gms/internal/t;->onAdClicked()V

    #@62
    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@64
    iget v0, v0, Lcom/google/android/gms/internal/ch;->oE:I

    #@66
    packed-switch v0, :pswitch_data_b0

    #@69
    new-instance v0, Lcom/google/android/gms/internal/cf$a;

    #@6b
    const-string v1, "Could not determine ad overlay type."

    #@6d
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf$a;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    :cond_71
    const/4 v0, 0x0

    #@72
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oq:Z

    #@74
    goto :goto_40

    #@75
    :pswitch_75
    const/4 v0, 0x0

    #@76
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cf;->k(Z)V

    #@79
    goto :goto_31

    #@7a
    :pswitch_7a
    new-instance v0, Lcom/google/android/gms/internal/cf$c;

    #@7c
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@7e
    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@80
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf$c;-><init>(Lcom/google/android/gms/internal/ex;)V

    #@83
    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->oj:Lcom/google/android/gms/internal/cf$c;

    #@85
    const/4 v0, 0x0

    #@86
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cf;->k(Z)V

    #@89
    goto :goto_31

    #@8a
    :pswitch_8a
    const/4 v0, 0x1

    #@8b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cf;->k(Z)V

    #@8e
    goto :goto_31

    #@8f
    :pswitch_8f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oo:Z

    #@91
    if-eqz v0, :cond_99

    #@93
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@95
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@98
    goto :goto_31

    #@99
    :cond_99
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@9b
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@9d
    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@9f
    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@a1
    iget-object v2, v2, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@a3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/cl;)Z

    #@a6
    move-result v0

    #@a7
    if-nez v0, :cond_31

    #@a9
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@ab
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_ae
    .catch Lcom/google/android/gms/internal/cf$a; {:try_start_32 .. :try_end_ae} :catch_24

    #@ae
    goto :goto_31

    #@af
    nop

    #@b0
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_75
        :pswitch_7a
        :pswitch_8a
        :pswitch_8f
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj;->destroy()V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@b
    if-eqz v0, :cond_14

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->or:Landroid/widget/RelativeLayout;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    #@14
    :cond_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/cf;->aT()V

    #@17
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oi:Lcom/google/android/gms/internal/cj;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj;->pause()V

    #@9
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->aR()V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@e
    if-eqz v0, :cond_21

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@12
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1c

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oj:Lcom/google/android/gms/internal/cf$c;

    #@1a
    if-nez v0, :cond_21

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/webkit/WebView;)V

    #@21
    :cond_21
    invoke-direct {p0}, Lcom/google/android/gms/internal/cf;->aT()V

    #@24
    return-void
.end method

.method public onRestart()V
    .registers 1

    #@0
    return-void
.end method

.method public onResume()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@2
    if-eqz v0, :cond_14

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->oh:Lcom/google/android/gms/internal/ch;

    #@6
    iget v0, v0, Lcom/google/android/gms/internal/ch;->oE:I

    #@8
    const/4 v1, 0x4

    #@9
    if-ne v0, v1, :cond_14

    #@b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oo:Z

    #@d
    if-eqz v0, :cond_1e

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@14
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@16
    if-eqz v0, :cond_1d

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->lN:Lcom/google/android/gms/internal/ex;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->b(Landroid/webkit/WebView;)V

    #@1d
    :cond_1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cf;->oo:Z

    #@21
    goto :goto_14
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    #@2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cf;->oo:Z

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@7
    return-void
.end method

.method public onStart()V
    .registers 1

    #@0
    return-void
.end method

.method public onStop()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cf;->aT()V

    #@3
    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    #@5
    return-void
.end method
