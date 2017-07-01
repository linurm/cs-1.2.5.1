.class Lcom/google/android/gms/analytics/s$c;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic uw:Lcom/google/android/gms/analytics/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/s;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/s$c;->uw:Lcom/google/android/gms/analytics/s;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/s$c;-><init>(Lcom/google/android/gms/analytics/s;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$c;->uw:Lcom/google/android/gms/analytics/s;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->b(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/s$a;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uy:Lcom/google/android/gms/analytics/s$a;

    #@8
    if-ne v0, v1, :cond_f

    #@a
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$c;->uw:Lcom/google/android/gms/analytics/s;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->c(Lcom/google/android/gms/analytics/s;)V

    #@f
    :cond_f
    return-void
.end method
