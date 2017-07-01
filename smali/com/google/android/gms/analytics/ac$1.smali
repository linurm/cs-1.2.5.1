.class Lcom/google/android/gms/analytics/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wW:Lcom/google/android/gms/analytics/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ac;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/ac$1;->wW:Lcom/google/android/gms/analytics/ac;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
