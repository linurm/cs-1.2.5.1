.class Lcom/google/android/gms/analytics/Tracker$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/Tracker$a;-><init>(Lcom/google/android/gms/analytics/Tracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xu:Lcom/google/android/gms/analytics/Tracker;

.field final synthetic xv:Lcom/google/android/gms/analytics/Tracker$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/Tracker$a;Lcom/google/android/gms/analytics/Tracker;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$a$1;->xv:Lcom/google/android/gms/analytics/Tracker$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker$a$1;->xu:Lcom/google/android/gms/analytics/Tracker;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
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
