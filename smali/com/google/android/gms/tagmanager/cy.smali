.class Lcom/google/android/gms/tagmanager/cy;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cy;->a(Landroid/content/SharedPreferences$Editor;)V

    #@f
    return-void
.end method

.method static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x9

    #@4
    if-lt v0, v1, :cond_a

    #@6
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    new-instance v0, Ljava/lang/Thread;

    #@c
    new-instance v1, Lcom/google/android/gms/tagmanager/cy$1;

    #@e
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/cy$1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    #@11
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@17
    goto :goto_9
.end method
