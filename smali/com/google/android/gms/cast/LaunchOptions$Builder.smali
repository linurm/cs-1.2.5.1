.class public final Lcom/google/android/gms/cast/LaunchOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/LaunchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private As:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->As:Lcom/google/android/gms/cast/LaunchOptions;

    #@a
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/LaunchOptions;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->As:Lcom/google/android/gms/cast/LaunchOptions;

    #@2
    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/google/android/gms/cast/LaunchOptions$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->As:Lcom/google/android/gms/cast/LaunchOptions;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/internal/gi;->b(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/LaunchOptions;->setLanguage(Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->As:Lcom/google/android/gms/cast/LaunchOptions;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/LaunchOptions;->setRelaunchIfRunning(Z)V

    #@5
    return-object p0
.end method
