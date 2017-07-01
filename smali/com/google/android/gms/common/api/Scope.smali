.class public final Lcom/google/android/gms/common/api/Scope;
.super Ljava/lang/Object;


# instance fields
.field private final Em:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/common/api/Scope;->Em:Ljava/lang/String;

    #@5
    return-void
.end method


# virtual methods
.method public eP()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Scope;->Em:Ljava/lang/String;

    #@2
    return-object v0
.end method
