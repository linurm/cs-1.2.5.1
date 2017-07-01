.class public final Lcom/google/android/gms/internal/aa;
.super Ljava/lang/Object;


# instance fields
.field private final lo:Ljava/lang/String;

.field private final lp:Lorg/json/JSONObject;

.field private final lq:Ljava/lang/String;

.field private final lr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ev;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iget-object v0, p2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->lr:Ljava/lang/String;

    #@7
    iput-object p4, p0, Lcom/google/android/gms/internal/aa;->lp:Lorg/json/JSONObject;

    #@9
    iput-object p1, p0, Lcom/google/android/gms/internal/aa;->lq:Ljava/lang/String;

    #@b
    iput-object p3, p0, Lcom/google/android/gms/internal/aa;->lo:Ljava/lang/String;

    #@d
    return-void
.end method


# virtual methods
.method public ar()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->lo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public as()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->lr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public at()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->lp:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public au()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->lq:Ljava/lang/String;

    #@2
    return-object v0
.end method
