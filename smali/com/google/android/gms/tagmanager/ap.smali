.class Lcom/google/android/gms/tagmanager/ap;
.super Ljava/lang/Object;


# instance fields
.field private final afF:J

.field private afG:Ljava/lang/String;

.field private final ww:J

.field private final wx:J


# direct methods
.method constructor <init>(JJJ)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/ap;->ww:J

    #@5
    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/ap;->wx:J

    #@7
    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/ap;->afF:J

    #@9
    return-void
.end method


# virtual methods
.method R(Ljava/lang/String;)V
    .registers 3

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
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ap;->afG:Ljava/lang/String;

    #@f
    goto :goto_c
.end method

.method dl()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->ww:J

    #@2
    return-wide v0
.end method

.method lN()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->afF:J

    #@2
    return-wide v0
.end method

.method lO()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ap;->afG:Ljava/lang/String;

    #@2
    return-object v0
.end method
