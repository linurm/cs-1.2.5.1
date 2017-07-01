.class abstract Lcom/google/android/gms/analytics/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/analytics/j;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field tM:Lcom/google/android/gms/analytics/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/analytics/k$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/k$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/analytics/k$a",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/analytics/k;->mContext:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/analytics/k;->tM:Lcom/google/android/gms/analytics/k$a;

    #@7
    return-void
.end method

.method private a(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/analytics/j;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")TT;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@6
    move-result v0

    #@7
    :goto_7
    const/4 v1, 0x1

    #@8
    if-eq v0, v1, :cond_82

    #@a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x2

    #@f
    if-ne v0, v1, :cond_41

    #@11
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    const-string v1, "screenname"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_46

    #@21
    const/4 v0, 0x0

    #@22
    const-string v1, "name"

    #@24
    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_41

    #@36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_41

    #@3c
    iget-object v2, p0, Lcom/google/android/gms/analytics/k;->tM:Lcom/google/android/gms/analytics/k$a;

    #@3e
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/analytics/k$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    :cond_41
    :goto_41
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@44
    move-result v0

    #@45
    goto :goto_7

    #@46
    :cond_46
    const-string v1, "string"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_89

    #@4e
    const/4 v0, 0x0

    #@4f
    const-string v1, "name"

    #@51
    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_41

    #@63
    if-eqz v1, :cond_41

    #@65
    iget-object v2, p0, Lcom/google/android/gms/analytics/k;->tM:Lcom/google/android/gms/analytics/k$a;

    #@67
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/analytics/k$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6a} :catch_cf

    #@6a
    goto :goto_41

    #@6b
    :catch_6b
    move-exception v0

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string v2, "Error parsing tracker configuration file: "

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@82
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->tM:Lcom/google/android/gms/analytics/k$a;

    #@84
    invoke-interface {v0}, Lcom/google/android/gms/analytics/k$a;->cB()Lcom/google/android/gms/analytics/j;

    #@87
    move-result-object v0

    #@88
    return-object v0

    #@89
    :cond_89
    :try_start_89
    const-string v1, "bool"

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v1

    #@8f
    if-eqz v1, :cond_e7

    #@91
    const/4 v0, 0x0

    #@92
    const-string v1, "name"

    #@94
    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a3
    move-result v2

    #@a4
    if-nez v2, :cond_41

    #@a6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_a9} :catch_6b
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a9} :catch_cf

    #@a9
    move-result v2

    #@aa
    if-nez v2, :cond_41

    #@ac
    :try_start_ac
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@af
    move-result v2

    #@b0
    iget-object v3, p0, Lcom/google/android/gms/analytics/k;->tM:Lcom/google/android/gms/analytics/k$a;

    #@b2
    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/analytics/k$a;->c(Ljava/lang/String;Z)V
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b5} :catch_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_b5} :catch_6b
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b5} :catch_cf

    #@b5
    goto :goto_41

    #@b6
    :catch_b6
    move-exception v0

    #@b7
    :try_start_b7
    new-instance v0, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string v2, "Error parsing bool configuration value: "

    #@be
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v0

    #@ca
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
    :try_end_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_cd} :catch_6b
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_cd} :catch_cf

    #@cd
    goto/16 :goto_41

    #@cf
    :catch_cf
    move-exception v0

    #@d0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string v2, "Error parsing tracker configuration file: "

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@e6
    goto :goto_82

    #@e7
    :cond_e7
    :try_start_e7
    const-string v1, "integer"

    #@e9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v0

    #@ed
    if-eqz v0, :cond_41

    #@ef
    const/4 v0, 0x0

    #@f0
    const-string v1, "name"

    #@f2
    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f5
    move-result-object v0

    #@f6
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    #@f9
    move-result-object v1

    #@fa
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@fd
    move-result-object v1

    #@fe
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@101
    move-result v2

    #@102
    if-nez v2, :cond_41

    #@104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e7 .. :try_end_107} :catch_6b
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_107} :catch_cf

    #@107
    move-result v2

    #@108
    if-nez v2, :cond_41

    #@10a
    :try_start_10a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10d
    move-result v2

    #@10e
    iget-object v3, p0, Lcom/google/android/gms/analytics/k;->tM:Lcom/google/android/gms/analytics/k$a;

    #@110
    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/analytics/k$a;->a(Ljava/lang/String;I)V
    :try_end_113
    .catch Ljava/lang/NumberFormatException; {:try_start_10a .. :try_end_113} :catch_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10a .. :try_end_113} :catch_6b
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_113} :catch_cf

    #@113
    goto/16 :goto_41

    #@115
    :catch_115
    move-exception v0

    #@116
    :try_start_116
    new-instance v0, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string v2, "Error parsing int configuration value: "

    #@11d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v0

    #@125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v0

    #@129
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
    :try_end_12c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_116 .. :try_end_12c} :catch_6b
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_12c} :catch_cf

    #@12c
    goto/16 :goto_41
.end method


# virtual methods
.method public r(I)Lcom/google/android/gms/analytics/j;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/k;->a(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/analytics/j;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :catch_f
    move-exception v0

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v2, "inflate() called with unknown resourceId: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@26
    const/4 v0, 0x0

    #@27
    goto :goto_e
.end method
