.class public Lcom/google/android/gms/internal/hp;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;
    .registers 13

    #@0
    if-nez p3, :cond_6c

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    if-eqz v0, :cond_4b

    #@5
    const-string v1, "@string/"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_4b

    #@d
    if-eqz p4, :cond_4b

    #@f
    const-string v1, "@string/"

    #@11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    new-instance v3, Landroid/util/TypedValue;

    #@1f
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    #@22
    :try_start_22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v4

    #@26
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string v5, ":string/"

    #@31
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    const/4 v2, 0x1

    #@3e
    invoke-virtual {v4, v1, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_41} :catch_71

    #@41
    :goto_41
    iget-object v1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@43
    if-eqz v1, :cond_93

    #@45
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@47
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    :cond_4b
    :goto_4b
    if-eqz p5, :cond_6b

    #@4d
    if-nez v0, :cond_6b

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v2, "Required XML attribute \""

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    const-string v2, "\" missing"

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    :cond_6b
    return-object v0

    #@6c
    :cond_6c
    invoke-interface {p3, p0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    goto :goto_3

    #@71
    :catch_71
    move-exception v1

    #@72
    new-instance v1, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string v2, "Could not find resource for "

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    const-string v2, ": "

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    goto :goto_41

    #@93
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string v2, "Resource "

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    const-string v2, " was not a string: "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto :goto_4b
.end method
