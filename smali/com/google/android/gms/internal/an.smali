.class public final Lcom/google/android/gms/internal/an;
.super Lcom/google/android/gms/internal/as$a;


# instance fields
.field private final mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/as$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/an;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@5
    return-void
.end method


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/an;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method
