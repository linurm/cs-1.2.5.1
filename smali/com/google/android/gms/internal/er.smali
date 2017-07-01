.class public final Lcom/google/android/gms/internal/er;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/eq;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    #@3
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    #@7
    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
