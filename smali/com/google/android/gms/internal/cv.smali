.class public final Lcom/google/android/gms/internal/cv;
.super Ljava/lang/Object;


# instance fields
.field public pl:J

.field public final pm:Ljava/lang/String;

.field public final pn:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/google/android/gms/internal/cv;->pl:J

    #@5
    iput-object p3, p0, Lcom/google/android/gms/internal/cv;->pn:Ljava/lang/String;

    #@7
    iput-object p4, p0, Lcom/google/android/gms/internal/cv;->pm:Ljava/lang/String;

    #@9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/cv;->pn:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/cv;->pm:Ljava/lang/String;

    #@7
    return-void
.end method
