.class public final Lcom/google/android/gms/internal/eq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    #@c
    const-wide/16 v0, 0x0

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    #@11
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    #@14
    const-string v0, "com.google.android.gms.ads.db"

    #@16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    #@21
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    #@24
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    #@2b
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    #@2e
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    #@31
    return-void
.end method

.method public static a(Landroid/view/Window;)V
    .registers 2

    #@0
    const/high16 v0, 0x1000000

    #@2
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    #@5
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 1

    #@0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    #@3
    return-void
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 1

    #@0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    #@3
    return-void
.end method

.method public static d(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@5
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@5
    return-void
.end method
