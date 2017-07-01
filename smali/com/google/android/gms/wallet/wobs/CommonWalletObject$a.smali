.class public final Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic akO:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->akO:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Lcom/google/android/gms/wallet/wobs/CommonWalletObject$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;-><init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V

    #@3
    return-void
.end method


# virtual methods
.method public cw(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->akO:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->eC:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public nl()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->akO:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@2
    return-object v0
.end method
