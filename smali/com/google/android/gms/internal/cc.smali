.class public final Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/cl;)Z
    .registers 9

    #@0
    const/4 v5, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p1, :cond_b

    #@5
    const-string v1, "No intent data for launcher overlay."

    #@7
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    new-instance v2, Landroid/content/Intent;

    #@d
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@10
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->ob:Ljava/lang/String;

    #@12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1e

    #@18
    const-string v1, "Open GMSG did not contain a URL."

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@1d
    goto :goto_a

    #@1e
    :cond_1e
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->mimeType:Ljava/lang/String;

    #@20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_6f

    #@26
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->ob:Ljava/lang/String;

    #@28
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2b
    move-result-object v3

    #@2c
    iget-object v4, p1, Lcom/google/android/gms/internal/ce;->mimeType:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    :goto_31
    const-string v3, "android.intent.action.VIEW"

    #@33
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@36
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->packageName:Ljava/lang/String;

    #@38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_43

    #@3e
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->packageName:Ljava/lang/String;

    #@40
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@43
    :cond_43
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->oc:Ljava/lang/String;

    #@45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_80

    #@4b
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->oc:Ljava/lang/String;

    #@4d
    const-string v4, "/"

    #@4f
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    array-length v4, v3

    #@54
    if-ge v4, v5, :cond_79

    #@56
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string v2, "Could not parse component name from open GMSG: "

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p1, Lcom/google/android/gms/internal/ce;->oc:Ljava/lang/String;

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@6e
    goto :goto_a

    #@6f
    :cond_6f
    iget-object v3, p1, Lcom/google/android/gms/internal/ce;->ob:Ljava/lang/String;

    #@71
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@78
    goto :goto_31

    #@79
    :cond_79
    aget-object v4, v3, v0

    #@7b
    aget-object v3, v3, v1

    #@7d
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@80
    :cond_80
    :try_start_80
    new-instance v3, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string v4, "Launching an intent: "

    #@87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    invoke-static {v3}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@96
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@99
    invoke-interface {p2}, Lcom/google/android/gms/internal/cl;->Y()V
    :try_end_9c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_80 .. :try_end_9c} :catch_9f

    #@9c
    move v0, v1

    #@9d
    goto/16 :goto_a

    #@9f
    :catch_9f
    move-exception v1

    #@a0
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@a7
    goto/16 :goto_a
.end method
