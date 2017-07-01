.class public Lcom/apportable/utils/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final G:J = 0x40000000L

.field private static final K:J = 0x400L

.field private static final M:J = 0x100000L

.field private static final T:J = 0x10000000000L


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs Log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x3

    #@9
    aget-object v0, v0, v1

    #@b
    new-instance v1, Ljava/util/Formatter;

    #@d
    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    #@10
    const-string v2, "DEBUG_LOG"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string v4, " "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string v4, " "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    const-string v4, " "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@44
    move-result v0

    #@45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const-string v3, " "

    #@4b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    #@56
    move-result-wide v4

    #@57
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    const-string v3, ": "

    #@5d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v1, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    return-void
.end method

.method public static LogRect(Landroid/graphics/Rect;)V
    .registers 4

    #@0
    const-string v0, "VerdeLogging"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "Top: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget v2, p0, Landroid/graphics/Rect;->top:I

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string v2, ", Left: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Landroid/graphics/Rect;->left:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, ", Right: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string v2, ", Bottom: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    return-void
.end method

.method public static LogRect(Landroid/graphics/RectF;)V
    .registers 4

    #@0
    const-string v0, "VerdeLogging"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "Top: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget v2, p0, Landroid/graphics/RectF;->top:F

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string v2, ", Left: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Landroid/graphics/RectF;->left:F

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, ", Right: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string v2, ", Bottom: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    return-void
.end method

.method public static choosePreferredConfigOrder(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 19

    #@0
    const-class v0, Lcom/apportable/utils/Utils;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {p0, p1}, Lcom/apportable/utils/Utils;->getEglConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)[Ljavax/microedition/khronos/egl/EGLConfig;

    #@6
    move-result-object v11

    #@7
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    const-string v1, "apportable.opengles.atc_slow_surface"

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@11
    move-result v9

    #@12
    const/4 v3, 0x0

    #@13
    const/4 v1, 0x0

    #@14
    if-eqz v9, :cond_132

    #@16
    if-eqz p4, :cond_132

    #@18
    if-eqz p5, :cond_132

    #@1a
    if-eqz p3, :cond_132

    #@1c
    const/4 v0, 0x0

    #@1d
    const/4 v7, 0x0

    #@1e
    move-object v2, p2

    #@1f
    move-object v3, v1

    #@20
    move v8, v0

    #@21
    :goto_21
    array-length v0, v11

    #@22
    if-ge v8, v0, :cond_12e

    #@24
    aget-object v3, v11, v8

    #@26
    move-object v0, p0

    #@27
    move-object v1, p1

    #@28
    move-object/from16 v4, p3

    #@2a
    move-object/from16 v5, p4

    #@2c
    move-object/from16 v6, p5

    #@2e
    invoke-static/range {v0 .. v6}, Lcom/apportable/utils/Utils;->tryEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLConfig;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    const/4 v0, 0x0

    #@33
    aget-object v0, v1, v0

    #@35
    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    #@37
    const/4 v2, 0x1

    #@38
    aget-object v1, v1, v2

    #@3a
    check-cast v1, Ljavax/microedition/khronos/egl/EGLSurface;

    #@3c
    if-eqz v0, :cond_f2

    #@3e
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    #@44
    if-eqz v2, :cond_f3

    #@46
    const/4 v3, 0x1

    #@47
    move-object v7, v2

    #@48
    move-object v2, v0

    #@49
    move v12, v3

    #@4a
    move-object v3, v1

    #@4b
    move v1, v12

    #@4c
    :goto_4c
    if-eqz v9, :cond_103

    #@4e
    if-eqz v7, :cond_ff

    #@50
    const/16 v0, 0x1f03

    #@52
    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    const-string v4, "GL_AMD_compressed_ATC_texture"

    #@58
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5b
    move-result v0

    #@5c
    if-ltz v0, :cond_fb

    #@5e
    const/4 v0, 0x1

    #@5f
    move v10, v0

    #@60
    :goto_60
    if-eqz v1, :cond_6b

    #@62
    move-object v0, p0

    #@63
    move-object v1, p1

    #@64
    move-object/from16 v4, p4

    #@66
    move-object/from16 v5, p5

    #@68
    invoke-static/range {v0 .. v5}, Lcom/apportable/utils/Utils;->resetEglState(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    #@6b
    :cond_6b
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@6e
    move-result-object v0

    #@6f
    const-string v1, "apportable.opengles.true_color"

    #@71
    const/4 v2, 0x0

    #@72
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@75
    move-result v0

    #@76
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@79
    move-result-object v1

    #@7a
    const-string v2, "apportable.opengles.fast_color"

    #@7c
    const/4 v3, 0x0

    #@7d
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@80
    move-result v1

    #@81
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@84
    move-result-object v2

    #@85
    const-string v3, "apportable.opengles.no_depth_buffer"

    #@87
    const/4 v4, 0x0

    #@88
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_107

    #@8e
    const/4 v4, 0x1

    #@8f
    :goto_8f
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@92
    move-result-object v2

    #@93
    const-string v3, "apportable.opengles.no_stencil_buffer"

    #@95
    const/4 v5, 0x0

    #@96
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@99
    move-result v2

    #@9a
    if-nez v2, :cond_109

    #@9c
    const/4 v5, 0x1

    #@9d
    :goto_9d
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@a0
    move-result-object v2

    #@a1
    const-string v3, "apportable.opengles.glsurface_magic"

    #@a3
    const/4 v6, 0x0

    #@a4
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a7
    move-result v2

    #@a8
    if-eqz v2, :cond_cf

    #@aa
    if-nez v1, :cond_cf

    #@ac
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@ae
    const-string v3, "Sony Ericsson"

    #@b0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v2

    #@b4
    if-eqz v2, :cond_cf

    #@b6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b8
    const/16 v3, 0xe

    #@ba
    if-lt v2, v3, :cond_cf

    #@bc
    invoke-static {}, Lcom/apportable/utils/Utils;->getTotalMem()J

    #@bf
    move-result-wide v2

    #@c0
    const-wide/16 v6, 0x200

    #@c2
    cmp-long v2, v2, v6

    #@c4
    if-gez v2, :cond_cf

    #@c6
    const-string v0, "choosePreferredConfigOrder"

    #@c8
    const-string v1, "force to fast_color, SE/ICS"

    #@ca
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    const/4 v0, 0x0

    #@ce
    const/4 v1, 0x1

    #@cf
    :cond_cf
    if-eqz v1, :cond_10b

    #@d1
    const/4 v0, 0x0

    #@d2
    :cond_d2
    :goto_d2
    if-eqz v0, :cond_10f

    #@d4
    const-string v0, "choosePreferredConfigOrder"

    #@d6
    const-string v1, "using true_color"

    #@d8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    const/16 v6, 0x8

    #@dd
    const/16 v7, 0x8

    #@df
    const/16 v8, 0x8

    #@e1
    const/16 v9, 0x8

    #@e3
    :goto_e3
    new-instance v0, Lcom/apportable/utils/Utils$1;

    #@e5
    move-object v1, p0

    #@e6
    move-object v2, p1

    #@e7
    move v3, v10

    #@e8
    invoke-direct/range {v0 .. v9}, Lcom/apportable/utils/Utils$1;-><init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;ZZZIIII)V

    #@eb
    invoke-static {v11, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_129

    #@ee
    const-class v0, Lcom/apportable/utils/Utils;

    #@f0
    monitor-exit v0

    #@f1
    return-object v11

    #@f2
    :cond_f2
    move-object v2, v7

    #@f3
    :cond_f3
    add-int/lit8 v3, v8, 0x1

    #@f5
    move v8, v3

    #@f6
    move-object v7, v2

    #@f7
    move-object v2, v0

    #@f8
    move-object v3, v1

    #@f9
    goto/16 :goto_21

    #@fb
    :cond_fb
    const/4 v0, 0x0

    #@fc
    move v10, v0

    #@fd
    goto/16 :goto_60

    #@ff
    :cond_ff
    const/4 v0, 0x0

    #@100
    move v10, v0

    #@101
    goto/16 :goto_60

    #@103
    :cond_103
    const/4 v0, 0x0

    #@104
    move v10, v0

    #@105
    goto/16 :goto_60

    #@107
    :cond_107
    const/4 v4, 0x0

    #@108
    goto :goto_8f

    #@109
    :cond_109
    const/4 v5, 0x0

    #@10a
    goto :goto_9d

    #@10b
    :cond_10b
    if-eqz v0, :cond_d2

    #@10d
    const/4 v1, 0x0

    #@10e
    goto :goto_d2

    #@10f
    :cond_10f
    if-eqz v1, :cond_11d

    #@111
    :try_start_111
    const-string v0, "choosePreferredConfigOrder"

    #@113
    const-string v1, "using fast_color"

    #@115
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@118
    const/4 v6, 0x5

    #@119
    const/4 v7, 0x6

    #@11a
    const/4 v8, 0x5

    #@11b
    const/4 v9, 0x0

    #@11c
    goto :goto_e3

    #@11d
    :cond_11d
    const-string v0, "choosePreferredConfigOrder"

    #@11f
    const-string v1, "don\'t care about color depth"

    #@121
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_111 .. :try_end_124} :catchall_129

    #@124
    const/4 v6, -0x1

    #@125
    const/4 v7, -0x1

    #@126
    const/4 v8, -0x1

    #@127
    const/4 v9, -0x1

    #@128
    goto :goto_e3

    #@129
    :catchall_129
    move-exception v0

    #@12a
    const-class v1, Lcom/apportable/utils/Utils;

    #@12c
    monitor-exit v1

    #@12d
    throw v0

    #@12e
    :cond_12e
    const/4 v0, 0x1

    #@12f
    move v1, v0

    #@130
    goto/16 :goto_4c

    #@132
    :cond_132
    const/4 v0, 0x0

    #@133
    const/4 v2, 0x0

    #@134
    move v1, v0

    #@135
    move-object v7, v2

    #@136
    move-object v2, p2

    #@137
    goto/16 :goto_4c
.end method

.method public static dataSizeString(J)Ljava/lang/String;
    .registers 12

    #@0
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v0, 0x5

    #@6
    new-array v2, v0, [J

    #@8
    const-wide v4, 0x10000000000L

    #@d
    aput-wide v4, v2, v1

    #@f
    const-wide/32 v4, 0x40000000

    #@12
    aput-wide v4, v2, v6

    #@14
    const-wide/32 v4, 0x100000

    #@17
    aput-wide v4, v2, v7

    #@19
    const-wide/16 v4, 0x400

    #@1b
    aput-wide v4, v2, v8

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    aput-wide v4, v2, v9

    #@21
    const-wide/16 v4, 0x1

    #@23
    cmp-long v0, p0, v4

    #@25
    if-gez v0, :cond_6b

    #@27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string v2, "Invalid file size: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    :cond_40
    add-int/lit8 v0, v0, 0x1

    #@42
    :goto_42
    array-length v3, v2

    #@43
    if-ge v0, v3, :cond_69

    #@45
    aget-wide v4, v2, v0

    #@47
    cmp-long v3, p0, v4

    #@49
    if-ltz v3, :cond_40

    #@4b
    const/4 v2, 0x5

    #@4c
    new-array v2, v2, [Ljava/lang/String;

    #@4e
    const-string v3, "TB"

    #@50
    aput-object v3, v2, v1

    #@52
    const-string v1, "GB"

    #@54
    aput-object v1, v2, v6

    #@56
    const-string v1, "MB"

    #@58
    aput-object v1, v2, v7

    #@5a
    const-string v1, "KB"

    #@5c
    aput-object v1, v2, v8

    #@5e
    const-string v1, "B"

    #@60
    aput-object v1, v2, v9

    #@62
    aget-object v0, v2, v0

    #@64
    invoke-static {p0, p1, v4, v5, v0}, Lcom/apportable/utils/Utils;->format(JJLjava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    :goto_68
    return-object v0

    #@69
    :cond_69
    const/4 v0, 0x0

    #@6a
    goto :goto_68

    #@6b
    :cond_6b
    move v0, v1

    #@6c
    goto :goto_42
.end method

.method private static format(JJLjava/lang/String;)Ljava/lang/String;
    .registers 11

    #@0
    const-wide/16 v0, 0x1

    #@2
    cmp-long v0, p2, v0

    #@4
    if-lez v0, :cond_2c

    #@6
    long-to-double v0, p0

    #@7
    long-to-double v2, p2

    #@8
    div-double/2addr v0, v2

    #@9
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    new-instance v3, Ljava/text/DecimalFormat;

    #@10
    const-string v4, "#,##0.#"

    #@12
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, " "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    :cond_2c
    long-to-double v0, p0

    #@2d
    goto :goto_9
.end method

.method private static getAvailMem()J
    .registers 4

    #@0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    #@2
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@5
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@8
    move-result-object v0

    #@9
    const-string v2, "activity"

    #@b
    invoke-virtual {v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/ActivityManager;

    #@11
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@14
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    #@16
    const-wide/32 v2, 0x100000

    #@19
    div-long/2addr v0, v2

    #@1a
    return-wide v0
.end method

.method public static getEglConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)[Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    const-class v0, Lcom/apportable/utils/Utils;

    #@3
    monitor-enter v0

    #@4
    const/4 v0, 0x1

    #@5
    :try_start_5
    new-array v0, v0, [I

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {p0, p1, v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    #@c
    aget v1, v0, v3

    #@e
    :try_start_e
    new-array v2, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    #@10
    invoke-interface {p0, p1, v2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    #@13
    const-class v0, Lcom/apportable/utils/Utils;

    #@15
    monitor-exit v0

    #@16
    return-object v2

    #@17
    :catchall_17
    move-exception v0

    #@18
    const-class v1, Lcom/apportable/utils/Utils;

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private static getTotalMem()J
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-le v0, v1, :cond_21

    #@6
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    #@8
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@b
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@e
    move-result-object v0

    #@f
    const-string v2, "activity"

    #@11
    invoke-virtual {v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/ActivityManager;

    #@17
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@1a
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    #@1c
    const-wide/32 v2, 0x100000

    #@1f
    div-long/2addr v0, v2

    #@20
    :goto_20
    return-wide v0

    #@21
    :cond_21
    const-wide/16 v0, 0x1ff

    #@23
    goto :goto_20
.end method

.method public static printEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 13

    #@0
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x4

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    new-array v0, v6, [I

    #@7
    const-string v1, "Apportable"

    #@9
    const-string v2, "conf = %s"

    #@b
    new-array v3, v6, [Ljava/lang/Object;

    #@d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    aput-object v4, v3, v5

    #@13
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    const/16 v1, 0x3024

    #@1c
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1f
    const-string v1, "Apportable"

    #@21
    const-string v2, "EGL_RED_SIZE = %d"

    #@23
    new-array v3, v6, [Ljava/lang/Object;

    #@25
    aget v4, v0, v5

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v4

    #@2b
    aput-object v4, v3, v5

    #@2d
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    const/16 v1, 0x3023

    #@36
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@39
    const-string v1, "Apportable"

    #@3b
    const-string v2, "EGL_GREEN_SIZE = %d"

    #@3d
    new-array v3, v6, [Ljava/lang/Object;

    #@3f
    aget v4, v0, v5

    #@41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v4

    #@45
    aput-object v4, v3, v5

    #@47
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    const/16 v1, 0x3022

    #@50
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@53
    const-string v1, "Apportable"

    #@55
    const-string v2, "EGL_BLUE_SIZE = %d"

    #@57
    new-array v3, v6, [Ljava/lang/Object;

    #@59
    aget v4, v0, v5

    #@5b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v4

    #@5f
    aput-object v4, v3, v5

    #@61
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    const/16 v1, 0x3021

    #@6a
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@6d
    const-string v1, "Apportable"

    #@6f
    const-string v2, "EGL_ALPHA_SIZE = %d"

    #@71
    new-array v3, v6, [Ljava/lang/Object;

    #@73
    aget v4, v0, v5

    #@75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v4

    #@79
    aput-object v4, v3, v5

    #@7b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    const/16 v1, 0x3025

    #@84
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@87
    const-string v1, "Apportable"

    #@89
    const-string v2, "EGL_DEPTH_SIZE = %d"

    #@8b
    new-array v3, v6, [Ljava/lang/Object;

    #@8d
    aget v4, v0, v5

    #@8f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v4

    #@93
    aput-object v4, v3, v5

    #@95
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@98
    move-result-object v2

    #@99
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    const/16 v1, 0x3026

    #@9e
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@a1
    const-string v1, "Apportable"

    #@a3
    const-string v2, "EGL_STENCIL_SIZE = %d"

    #@a5
    new-array v3, v6, [Ljava/lang/Object;

    #@a7
    aget v4, v0, v5

    #@a9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ac
    move-result-object v4

    #@ad
    aput-object v4, v3, v5

    #@af
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    const/16 v1, 0x3020

    #@b8
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@bb
    const-string v1, "Apportable"

    #@bd
    const-string v2, "EGL_BUFFER_SIZE = %d"

    #@bf
    new-array v3, v6, [Ljava/lang/Object;

    #@c1
    aget v4, v0, v5

    #@c3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c6
    move-result-object v4

    #@c7
    aput-object v4, v3, v5

    #@c9
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@cc
    move-result-object v2

    #@cd
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    const/16 v1, 0x3028

    #@d2
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@d5
    const-string v1, "Apportable"

    #@d7
    const-string v2, "EGL_CONFIG_ID = %d"

    #@d9
    new-array v3, v6, [Ljava/lang/Object;

    #@db
    aget v4, v0, v5

    #@dd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e0
    move-result-object v4

    #@e1
    aput-object v4, v3, v5

    #@e3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    const/16 v1, 0x3029

    #@ec
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@ef
    const-string v1, "Apportable"

    #@f1
    const-string v2, "EGL_LEVEL = %d"

    #@f3
    new-array v3, v6, [Ljava/lang/Object;

    #@f5
    aget v4, v0, v5

    #@f7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v4

    #@fb
    aput-object v4, v3, v5

    #@fd
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@104
    const/16 v1, 0x302c

    #@106
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@109
    const-string v1, "Apportable"

    #@10b
    const-string v2, "EGL_MAX_PBUFFER_WIDTH = %d"

    #@10d
    new-array v3, v6, [Ljava/lang/Object;

    #@10f
    aget v4, v0, v5

    #@111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@114
    move-result-object v4

    #@115
    aput-object v4, v3, v5

    #@117
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11a
    move-result-object v2

    #@11b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11e
    const/16 v1, 0x302a

    #@120
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@123
    const-string v1, "Apportable"

    #@125
    const-string v2, "EGL_MAX_PBUFFER_HEIGHT = %d"

    #@127
    new-array v3, v6, [Ljava/lang/Object;

    #@129
    aget v4, v0, v5

    #@12b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12e
    move-result-object v4

    #@12f
    aput-object v4, v3, v5

    #@131
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@134
    move-result-object v2

    #@135
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@138
    const/16 v1, 0x302b

    #@13a
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@13d
    const-string v1, "Apportable"

    #@13f
    const-string v2, "EGL_MAX_PBUFFER_PIXELS = %d"

    #@141
    new-array v3, v6, [Ljava/lang/Object;

    #@143
    aget v4, v0, v5

    #@145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v4

    #@149
    aput-object v4, v3, v5

    #@14b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14e
    move-result-object v2

    #@14f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@152
    const/16 v1, 0x302e

    #@154
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@157
    const-string v1, "Apportable"

    #@159
    const-string v2, "EGL_NATIVE_VISUAL_ID = %d"

    #@15b
    new-array v3, v6, [Ljava/lang/Object;

    #@15d
    aget v4, v0, v5

    #@15f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@162
    move-result-object v4

    #@163
    aput-object v4, v3, v5

    #@165
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@168
    move-result-object v2

    #@169
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16c
    const/16 v1, 0x302f

    #@16e
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@171
    const-string v1, "Apportable"

    #@173
    const-string v2, "EGL_NATIVE_VISUAL_TYPE = %d"

    #@175
    new-array v3, v6, [Ljava/lang/Object;

    #@177
    aget v4, v0, v5

    #@179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17c
    move-result-object v4

    #@17d
    aput-object v4, v3, v5

    #@17f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@182
    move-result-object v2

    #@183
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@186
    const/16 v1, 0x3032

    #@188
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@18b
    const-string v1, "Apportable"

    #@18d
    const-string v2, "EGL_SAMPLE_BUFFERS = %d"

    #@18f
    new-array v3, v6, [Ljava/lang/Object;

    #@191
    aget v4, v0, v5

    #@193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@196
    move-result-object v4

    #@197
    aput-object v4, v3, v5

    #@199
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19c
    move-result-object v2

    #@19d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a0
    const/16 v1, 0x3031

    #@1a2
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1a5
    const-string v1, "Apportable"

    #@1a7
    const-string v2, "EGL_SAMPLES = %d"

    #@1a9
    new-array v3, v6, [Ljava/lang/Object;

    #@1ab
    aget v4, v0, v5

    #@1ad
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b0
    move-result-object v4

    #@1b1
    aput-object v4, v3, v5

    #@1b3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b6
    move-result-object v2

    #@1b7
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1ba
    const/16 v1, 0x3034

    #@1bc
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1bf
    const-string v1, "Apportable"

    #@1c1
    const-string v2, "EGL_TRANSPARENT_TYPE = %d"

    #@1c3
    new-array v3, v6, [Ljava/lang/Object;

    #@1c5
    aget v4, v0, v5

    #@1c7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ca
    move-result-object v4

    #@1cb
    aput-object v4, v3, v5

    #@1cd
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d0
    move-result-object v2

    #@1d1
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1d4
    const/16 v1, 0x3027

    #@1d6
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1d9
    const-string v1, "Apportable"

    #@1db
    const-string v2, "EGL_CONFIG_CAVEAT = %d (%d,%d,%d)"

    #@1dd
    new-array v3, v8, [Ljava/lang/Object;

    #@1df
    aget v4, v0, v5

    #@1e1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e4
    move-result-object v4

    #@1e5
    aput-object v4, v3, v5

    #@1e7
    const/16 v4, 0x3038

    #@1e9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ec
    move-result-object v4

    #@1ed
    aput-object v4, v3, v6

    #@1ef
    const/16 v4, 0x3050

    #@1f1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f4
    move-result-object v4

    #@1f5
    aput-object v4, v3, v7

    #@1f7
    const/16 v4, 0x3051

    #@1f9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1fc
    move-result-object v4

    #@1fd
    aput-object v4, v3, v9

    #@1ff
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@202
    move-result-object v2

    #@203
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@206
    const/16 v1, 0x302d

    #@208
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@20b
    const-string v1, "Apportable"

    #@20d
    const-string v2, "EGL_NATIVE_RENDERABLE = %d"

    #@20f
    new-array v3, v6, [Ljava/lang/Object;

    #@211
    aget v4, v0, v5

    #@213
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@216
    move-result-object v4

    #@217
    aput-object v4, v3, v5

    #@219
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21c
    move-result-object v2

    #@21d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@220
    const/16 v1, 0x3033

    #@222
    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@225
    const-string v1, "Apportable"

    #@227
    const-string v2, "EGL_SURFACE_TYPE = %d EGL_WINDOW_BIT=%d EGL_PBUFFER_BIT=%d EGL_PIXMAP_BIT=%d"

    #@229
    new-array v3, v8, [Ljava/lang/Object;

    #@22b
    aget v0, v0, v5

    #@22d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@230
    move-result-object v0

    #@231
    aput-object v0, v3, v5

    #@233
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@236
    move-result-object v0

    #@237
    aput-object v0, v3, v6

    #@239
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23c
    move-result-object v0

    #@23d
    aput-object v0, v3, v7

    #@23f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@242
    move-result-object v0

    #@243
    aput-object v0, v3, v9

    #@245
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@248
    move-result-object v0

    #@249
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24c
    return-void
.end method

.method private static resetEglState(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .registers 9

    #@0
    if-eqz p0, :cond_d

    #@2
    if-eqz p1, :cond_d

    #@4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@6
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@8
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@a
    invoke-interface {p0, p1, v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@d
    :cond_d
    if-eqz p0, :cond_14

    #@f
    if-eqz p3, :cond_14

    #@11
    invoke-interface {p4, p0, p1, p3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@14
    :cond_14
    if-eqz p0, :cond_1f

    #@16
    if-eqz p2, :cond_1f

    #@18
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@1a
    if-eq p2, v0, :cond_1f

    #@1c
    invoke-interface {p5, p0, p1, p2}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    #@1f
    :cond_1f
    return-void
.end method

.method public static tryEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLConfig;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljava/lang/Object;
    .registers 16

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    const-class v0, Lcom/apportable/utils/Utils;

    #@5
    monitor-enter v0

    #@6
    :try_start_6
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_7e

    #@9
    if-eqz p3, :cond_42

    #@b
    :try_start_b
    invoke-interface {p5, p0, p1, p3, p4}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    #@e
    move-result-object v3

    #@f
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@12
    move-result v0

    #@13
    const/16 v1, 0x3000

    #@15
    if-eq v0, v1, :cond_4d

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string v2, "Apportable"

    #@1e
    const-string v4, "createWindowSurface failed with "

    #@20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    const/16 v1, 0x300b

    #@31
    if-ne v0, v1, :cond_d8

    #@33
    const-string v0, "Apportable"

    #@35
    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    #@37
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    move-object v2, p2

    #@3b
    :goto_3b
    move-object v0, p0

    #@3c
    move-object v1, p1

    #@3d
    move-object v4, p5

    #@3e
    move-object v5, p6

    #@3f
    invoke-static/range {v0 .. v5}, Lcom/apportable/utils/Utils;->resetEglState(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_42} :catch_75
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_b9
    .catchall {:try_start_b .. :try_end_42} :catchall_7e

    #@42
    :cond_42
    :goto_42
    const/4 v0, 0x2

    #@43
    :try_start_43
    new-array v0, v0, [Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_7e

    #@45
    aput-object v6, v0, v7

    #@47
    aput-object v6, v0, v8

    #@49
    :goto_49
    const-class v1, Lcom/apportable/utils/Utils;

    #@4b
    monitor-exit v1

    #@4c
    return-object v0

    #@4d
    :cond_4d
    :try_start_4d
    invoke-interface {p6, p0, p1, p3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    #@50
    move-result-object p2

    #@51
    if-eqz p2, :cond_57

    #@53
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@55
    if-ne p2, v0, :cond_83

    #@57
    :cond_57
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@5a
    move-result v0

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v2, "Apportable"

    #@62
    const-string v4, "createContext failed. Error code = "

    #@64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_73} :catch_75
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_73} :catch_b9
    .catchall {:try_start_4d .. :try_end_73} :catchall_7e

    #@73
    move-object v2, v6

    #@74
    goto :goto_3b

    #@75
    :catch_75
    move-exception v0

    #@76
    :try_start_76
    const-string v0, "Apportable"

    #@78
    const-string v1, "Chosen EGLConfig rejected, IllegalArgumentException"

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_7e

    #@7d
    goto :goto_42

    #@7e
    :catchall_7e
    move-exception v0

    #@7f
    const-class v1, Lcom/apportable/utils/Utils;

    #@81
    monitor-exit v1

    #@82
    throw v0

    #@83
    :cond_83
    :try_start_83
    invoke-interface {p0, p1, v3, v3, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@86
    move-result v0

    #@87
    if-nez v0, :cond_a7

    #@89
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@8c
    move-result v0

    #@8d
    new-instance v1, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string v2, "Apportable"

    #@94
    const-string v4, "createWindowSurface was unable to make the surface current. Error code = "

    #@96
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    move-object v2, p2

    #@a6
    goto :goto_3b

    #@a7
    :cond_a7
    const-string v0, "Apportable"

    #@a9
    const-string v1, "Chosen EGLConfig accepted:"

    #@ab
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    invoke-static {p0, p1, p3}, Lcom/apportable/utils/Utils;->printEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    #@b1
    const/4 v0, 0x2

    #@b2
    new-array v0, v0, [Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_b4} :catch_75
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_b4} :catch_b9
    .catchall {:try_start_83 .. :try_end_b4} :catchall_7e

    #@b4
    aput-object p2, v0, v7

    #@b6
    aput-object v3, v0, v8

    #@b8
    goto :goto_49

    #@b9
    :catch_b9
    move-exception v0

    #@ba
    :try_start_ba
    new-instance v1, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string v2, "Apportable"

    #@c1
    const-string v3, "Chosen EGLConfig rejected, Exception "

    #@c3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@ca
    move-result-object v0

    #@cb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v0

    #@d3
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_ba .. :try_end_d6} :catchall_7e

    #@d6
    goto/16 :goto_42

    #@d8
    :cond_d8
    move-object v2, p2

    #@d9
    goto/16 :goto_3b
.end method
