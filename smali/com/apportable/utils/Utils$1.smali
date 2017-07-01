.class final Lcom/apportable/utils/Utils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/utils/Utils;->choosePreferredConfigOrder(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljavax/microedition/khronos/egl/EGLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljavax/microedition/khronos/egl/EGLConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$alpha:I

.field final synthetic val$blue:I

.field final synthetic val$depthBuffer:Z

.field final synthetic val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

.field final synthetic val$egl:Ljavax/microedition/khronos/egl/EGL10;

.field final synthetic val$green:I

.field final synthetic val$isATC:Z

.field final synthetic val$red:I

.field final synthetic val$stencilBuffer:Z


# direct methods
.method constructor <init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;ZZZIIII)V
    .registers 10

    #@0
    iput-object p1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@2
    iput-object p2, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@4
    iput-boolean p3, p0, Lcom/apportable/utils/Utils$1;->val$isATC:Z

    #@6
    iput-boolean p4, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@8
    iput-boolean p5, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@a
    iput p6, p0, Lcom/apportable/utils/Utils$1;->val$red:I

    #@c
    iput p7, p0, Lcom/apportable/utils/Utils$1;->val$green:I

    #@e
    iput p8, p0, Lcom/apportable/utils/Utils$1;->val$blue:I

    #@10
    iput p9, p0, Lcom/apportable/utils/Utils$1;->val$alpha:I

    #@12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@15
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Ljavax/microedition/khronos/egl/EGLConfig;

    #@2
    check-cast p2, Ljavax/microedition/khronos/egl/EGLConfig;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/apportable/utils/Utils$1;->compare(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLConfig;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLConfig;)I
    .registers 16

    #@0
    const/16 v9, 0x3033

    #@2
    const/16 v7, 0x3027

    #@4
    const/4 v3, -0x1

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    new-array v6, v1, [I

    #@9
    iget-object v0, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@d
    invoke-interface {v0, v4, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@10
    aget v0, v6, v2

    #@12
    const/16 v4, 0x3051

    #@14
    if-ne v0, v4, :cond_249

    #@16
    move v0, v1

    #@17
    :goto_17
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@19
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1b
    invoke-interface {v4, v5, p2, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1e
    aget v4, v6, v2

    #@20
    const/16 v5, 0x3051

    #@22
    if-ne v4, v5, :cond_246

    #@24
    move v4, v1

    #@25
    :goto_25
    if-eqz v0, :cond_2a

    #@27
    if-eqz v4, :cond_2a

    #@29
    :cond_29
    :goto_29
    return v2

    #@2a
    :cond_2a
    if-eqz v0, :cond_2e

    #@2c
    move v2, v1

    #@2d
    goto :goto_29

    #@2e
    :cond_2e
    if-eqz v4, :cond_32

    #@30
    move v2, v3

    #@31
    goto :goto_29

    #@32
    :cond_32
    iget-boolean v0, p0, Lcom/apportable/utils/Utils$1;->val$isATC:Z

    #@34
    if-eqz v0, :cond_77

    #@36
    iget-object v0, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@38
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@3a
    invoke-interface {v0, v4, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@3d
    aget v0, v6, v2

    #@3f
    const/16 v4, 0x3050

    #@41
    if-ne v0, v4, :cond_243

    #@43
    move v0, v3

    #@44
    :goto_44
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@46
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@48
    invoke-interface {v4, v5, p2, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@4b
    aget v4, v6, v2

    #@4d
    const/16 v5, 0x3050

    #@4f
    if-ne v4, v5, :cond_53

    #@51
    add-int/lit8 v0, v0, 0x1

    #@53
    :cond_53
    :goto_53
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@55
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@57
    invoke-interface {v4, v5, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@5a
    aget v4, v6, v2

    #@5c
    and-int/lit8 v4, v4, 0x4

    #@5e
    if-nez v4, :cond_237

    #@60
    move v4, v1

    #@61
    :goto_61
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@63
    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@65
    invoke-interface {v5, v7, p2, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@68
    aget v5, v6, v2

    #@6a
    and-int/lit8 v5, v5, 0x4

    #@6c
    if-nez v5, :cond_234

    #@6e
    move v5, v1

    #@6f
    :goto_6f
    if-eqz v4, :cond_73

    #@71
    if-nez v5, :cond_29

    #@73
    :cond_73
    if-eqz v4, :cond_9f

    #@75
    move v2, v1

    #@76
    goto :goto_29

    #@77
    :cond_77
    iget-object v0, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@79
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@7b
    invoke-interface {v0, v4, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@7e
    aget v0, v6, v2

    #@80
    const/16 v4, 0x3050

    #@82
    if-ne v0, v4, :cond_240

    #@84
    move v0, v1

    #@85
    :goto_85
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@87
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@89
    invoke-interface {v4, v5, p2, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@8c
    aget v4, v6, v2

    #@8e
    const/16 v5, 0x3050

    #@90
    if-ne v4, v5, :cond_23d

    #@92
    move v4, v1

    #@93
    :goto_93
    if-eqz v0, :cond_97

    #@95
    if-nez v4, :cond_29

    #@97
    :cond_97
    if-eqz v0, :cond_9b

    #@99
    move v2, v1

    #@9a
    goto :goto_29

    #@9b
    :cond_9b
    if-eqz v4, :cond_23a

    #@9d
    move v2, v3

    #@9e
    goto :goto_29

    #@9f
    :cond_9f
    if-eqz v5, :cond_a3

    #@a1
    move v2, v3

    #@a2
    goto :goto_29

    #@a3
    :cond_a3
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@a5
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@a7
    const/16 v7, 0x3025

    #@a9
    invoke-interface {v4, v5, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@ac
    aget v4, v6, v2

    #@ae
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@b0
    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@b2
    const/16 v8, 0x3025

    #@b4
    invoke-interface {v5, v7, p2, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@b7
    aget v5, v6, v2

    #@b9
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@bb
    if-eqz v7, :cond_c1

    #@bd
    if-gtz v4, :cond_c1

    #@bf
    if-lez v5, :cond_29

    #@c1
    :cond_c1
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@c3
    if-eqz v7, :cond_ca

    #@c5
    if-gtz v4, :cond_ca

    #@c7
    move v2, v1

    #@c8
    goto/16 :goto_29

    #@ca
    :cond_ca
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@cc
    if-eqz v7, :cond_d3

    #@ce
    if-gtz v5, :cond_d3

    #@d0
    move v2, v3

    #@d1
    goto/16 :goto_29

    #@d3
    :cond_d3
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@d5
    if-nez v7, :cond_db

    #@d7
    if-lez v4, :cond_db

    #@d9
    if-gtz v5, :cond_29

    #@db
    :cond_db
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@dd
    if-nez v7, :cond_e4

    #@df
    if-lez v4, :cond_e4

    #@e1
    move v2, v1

    #@e2
    goto/16 :goto_29

    #@e4
    :cond_e4
    iget-boolean v4, p0, Lcom/apportable/utils/Utils$1;->val$depthBuffer:Z

    #@e6
    if-nez v4, :cond_ed

    #@e8
    if-lez v5, :cond_ed

    #@ea
    move v2, v3

    #@eb
    goto/16 :goto_29

    #@ed
    :cond_ed
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@ef
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@f1
    const/16 v7, 0x3026

    #@f3
    invoke-interface {v4, v5, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@f6
    aget v4, v6, v2

    #@f8
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@fa
    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@fc
    const/16 v8, 0x3026

    #@fe
    invoke-interface {v5, v7, p2, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@101
    aget v5, v6, v2

    #@103
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@105
    if-eqz v7, :cond_10b

    #@107
    if-gtz v4, :cond_10b

    #@109
    if-lez v5, :cond_29

    #@10b
    :cond_10b
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@10d
    if-eqz v7, :cond_114

    #@10f
    if-gtz v4, :cond_114

    #@111
    move v2, v1

    #@112
    goto/16 :goto_29

    #@114
    :cond_114
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@116
    if-eqz v7, :cond_11d

    #@118
    if-gtz v5, :cond_11d

    #@11a
    move v2, v3

    #@11b
    goto/16 :goto_29

    #@11d
    :cond_11d
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@11f
    if-nez v7, :cond_125

    #@121
    if-lez v4, :cond_125

    #@123
    if-gtz v5, :cond_29

    #@125
    :cond_125
    iget-boolean v7, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@127
    if-nez v7, :cond_12e

    #@129
    if-lez v4, :cond_12e

    #@12b
    move v2, v1

    #@12c
    goto/16 :goto_29

    #@12e
    :cond_12e
    iget-boolean v1, p0, Lcom/apportable/utils/Utils$1;->val$stencilBuffer:Z

    #@130
    if-nez v1, :cond_137

    #@132
    if-lez v5, :cond_137

    #@134
    move v2, v3

    #@135
    goto/16 :goto_29

    #@137
    :cond_137
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@139
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@13b
    invoke-interface {v1, v3, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@13e
    aget v1, v6, v2

    #@140
    and-int/lit8 v1, v1, 0x1

    #@142
    if-eqz v1, :cond_146

    #@144
    add-int/lit8 v0, v0, -0x2

    #@146
    :cond_146
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@148
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@14a
    invoke-interface {v1, v3, p2, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@14d
    aget v1, v6, v2

    #@14f
    and-int/lit8 v1, v1, 0x1

    #@151
    if-eqz v1, :cond_155

    #@153
    add-int/lit8 v0, v0, 0x2

    #@155
    :cond_155
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@157
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@159
    invoke-interface {v1, v3, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@15c
    aget v1, v6, v2

    #@15e
    and-int/lit8 v1, v1, 0x2

    #@160
    if-nez v1, :cond_164

    #@162
    add-int/lit8 v0, v0, -0x2

    #@164
    :cond_164
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@166
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@168
    invoke-interface {v1, v3, p2, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@16b
    aget v1, v6, v2

    #@16d
    and-int/lit8 v1, v1, 0x2

    #@16f
    if-nez v1, :cond_173

    #@171
    add-int/lit8 v0, v0, 0x2

    #@173
    :cond_173
    iget-boolean v1, p0, Lcom/apportable/utils/Utils$1;->val$isATC:Z

    #@175
    if-eqz v1, :cond_214

    #@177
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@179
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@17b
    const/16 v4, 0x302d

    #@17d
    invoke-interface {v1, v3, p1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@180
    aget v1, v6, v2

    #@182
    if-lez v1, :cond_186

    #@184
    add-int/lit8 v0, v0, -0x8

    #@186
    :cond_186
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@188
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@18a
    const/16 v4, 0x302d

    #@18c
    invoke-interface {v1, v3, p2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@18f
    aget v1, v6, v2

    #@191
    if-lez v1, :cond_195

    #@193
    add-int/lit8 v0, v0, 0x8

    #@195
    :cond_195
    :goto_195
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@197
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@199
    const/16 v4, 0x3024

    #@19b
    invoke-interface {v1, v3, p1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@19e
    aget v1, v6, v2

    #@1a0
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1a2
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1a4
    const/16 v5, 0x3024

    #@1a6
    invoke-interface {v3, v4, p2, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1a9
    aget v3, v6, v2

    #@1ab
    iget-object v4, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1ad
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1af
    const/16 v7, 0x3023

    #@1b1
    invoke-interface {v4, v5, p1, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1b4
    aget v4, v6, v2

    #@1b6
    iget-object v5, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1b8
    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1ba
    const/16 v8, 0x3023

    #@1bc
    invoke-interface {v5, v7, p2, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1bf
    aget v5, v6, v2

    #@1c1
    iget-object v7, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1c3
    iget-object v8, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1c5
    const/16 v9, 0x3022

    #@1c7
    invoke-interface {v7, v8, p1, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1ca
    aget v7, v6, v2

    #@1cc
    iget-object v8, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1ce
    iget-object v9, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1d0
    const/16 v10, 0x3022

    #@1d2
    invoke-interface {v8, v9, p2, v10, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1d5
    aget v8, v6, v2

    #@1d7
    iget-object v9, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1d9
    iget-object v10, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1db
    const/16 v11, 0x3021

    #@1dd
    invoke-interface {v9, v10, p1, v11, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1e0
    aget v9, v6, v2

    #@1e2
    iget-object v10, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@1e4
    iget-object v11, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1e6
    const/16 v12, 0x3021

    #@1e8
    invoke-interface {v10, v11, p2, v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1eb
    aget v2, v6, v2

    #@1ed
    iget v6, p0, Lcom/apportable/utils/Utils$1;->val$red:I

    #@1ef
    if-ne v1, v6, :cond_1ff

    #@1f1
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$green:I

    #@1f3
    if-ne v4, v1, :cond_1ff

    #@1f5
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$blue:I

    #@1f7
    if-ne v7, v1, :cond_1ff

    #@1f9
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$alpha:I

    #@1fb
    if-ne v9, v1, :cond_1ff

    #@1fd
    add-int/lit8 v0, v0, -0x4

    #@1ff
    :cond_1ff
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$red:I

    #@201
    if-ne v3, v1, :cond_24c

    #@203
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$green:I

    #@205
    if-ne v5, v1, :cond_24c

    #@207
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$blue:I

    #@209
    if-ne v8, v1, :cond_24c

    #@20b
    iget v1, p0, Lcom/apportable/utils/Utils$1;->val$alpha:I

    #@20d
    if-ne v2, v1, :cond_24c

    #@20f
    add-int/lit8 v0, v0, 0x4

    #@211
    move v2, v0

    #@212
    goto/16 :goto_29

    #@214
    :cond_214
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@216
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@218
    const/16 v4, 0x302d

    #@21a
    invoke-interface {v1, v3, p1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@21d
    aget v1, v6, v2

    #@21f
    if-lez v1, :cond_223

    #@221
    add-int/lit8 v0, v0, 0x40

    #@223
    :cond_223
    iget-object v1, p0, Lcom/apportable/utils/Utils$1;->val$egl:Ljavax/microedition/khronos/egl/EGL10;

    #@225
    iget-object v3, p0, Lcom/apportable/utils/Utils$1;->val$display:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@227
    const/16 v4, 0x302d

    #@229
    invoke-interface {v1, v3, p2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@22c
    aget v1, v6, v2

    #@22e
    if-lez v1, :cond_195

    #@230
    add-int/lit8 v0, v0, -0x40

    #@232
    goto/16 :goto_195

    #@234
    :cond_234
    move v5, v2

    #@235
    goto/16 :goto_6f

    #@237
    :cond_237
    move v4, v2

    #@238
    goto/16 :goto_61

    #@23a
    :cond_23a
    move v0, v2

    #@23b
    goto/16 :goto_53

    #@23d
    :cond_23d
    move v4, v2

    #@23e
    goto/16 :goto_93

    #@240
    :cond_240
    move v0, v2

    #@241
    goto/16 :goto_85

    #@243
    :cond_243
    move v0, v2

    #@244
    goto/16 :goto_44

    #@246
    :cond_246
    move v4, v2

    #@247
    goto/16 :goto_25

    #@249
    :cond_249
    move v0, v2

    #@24a
    goto/16 :goto_17

    #@24c
    :cond_24c
    move v2, v0

    #@24d
    goto/16 :goto_29
.end method
