.class Lcom/google/android/gms/analytics/x;
.super Ljava/lang/Object;


# instance fields
.field private wv:Ljava/lang/String;

.field private final ww:J

.field private final wx:J

.field private wy:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "https:"

    #@5
    iput-object v0, p0, Lcom/google/android/gms/analytics/x;->wy:Ljava/lang/String;

    #@7
    iput-object p1, p0, Lcom/google/android/gms/analytics/x;->wv:Ljava/lang/String;

    #@9
    iput-wide p2, p0, Lcom/google/android/gms/analytics/x;->ww:J

    #@b
    iput-wide p4, p0, Lcom/google/android/gms/analytics/x;->wx:J

    #@d
    return-void
.end method


# virtual methods
.method Q(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/x;->wv:Ljava/lang/String;

    #@2
    return-void
.end method

.method R(Ljava/lang/String;)V
    .registers 4

    #@0
    if-eqz p1, :cond_c

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    const-string v1, "http:"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_c

    #@19
    const-string v0, "http:"

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/analytics/x;->wy:Ljava/lang/String;

    #@1d
    goto :goto_c
.end method

.method dk()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/x;->wv:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method dl()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/x;->ww:J

    #@2
    return-wide v0
.end method

.method dm()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/x;->wx:J

    #@2
    return-wide v0
.end method

.method dn()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/x;->wy:Ljava/lang/String;

    #@2
    return-object v0
.end method
