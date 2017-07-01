.class public Lcom/google/android/vending/licensing/PreferenceObfuscator;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceObfuscator"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    #@5
    iput-object p2, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    #@7
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@a
    return-void
.end method


# virtual methods
.method public commit()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@c
    :cond_c
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_f

    #@9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    #@b
    invoke-interface {v1, v0, p1}, Lcom/google/android/vending/licensing/Obfuscator;->unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lcom/google/android/vending/licensing/ValidationException; {:try_start_9 .. :try_end_e} :catch_10

    #@e
    move-result-object p2

    #@f
    :cond_f
    :goto_f
    return-object p2

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "PreferenceObfuscator"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v2, "Validation error while reading preference: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    goto :goto_f
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@2
    if-nez v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    #@6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    #@e
    invoke-interface {v0, p2, p1}, Lcom/google/android/vending/licensing/Obfuscator;->obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    #@14
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@17
    return-void
.end method
