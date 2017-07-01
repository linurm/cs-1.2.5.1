.class public final Lcom/google/android/gms/drive/Drive;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/Drive$a;,
        Lcom/google/android/gms/drive/Drive$b;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DriveApi:Lcom/google/android/gms/drive/DriveApi;

.field public static final HH:Lcom/google/android/gms/common/api/Scope;

.field public static final HI:Lcom/google/android/gms/common/api/Scope;

.field public static final HJ:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/drive/Drive$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final HK:Lcom/google/android/gms/drive/b;

.field public static final HL:Lcom/google/android/gms/drive/d;

.field public static final SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

.field public static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/drive/internal/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    #@3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    #@6
    sput-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@8
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@a
    const-string v1, "https://www.googleapis.com/auth/drive.file"

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    #@11
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@13
    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@18
    sput-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    #@1a
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@1c
    const-string v1, "https://www.googleapis.com/auth/drive"

    #@1e
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@21
    sput-object v0, Lcom/google/android/gms/drive/Drive;->HH:Lcom/google/android/gms/common/api/Scope;

    #@23
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@25
    const-string v1, "https://www.googleapis.com/auth/drive.apps"

    #@27
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@2a
    sput-object v0, Lcom/google/android/gms/drive/Drive;->HI:Lcom/google/android/gms/common/api/Scope;

    #@2c
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@2e
    new-instance v1, Lcom/google/android/gms/drive/Drive$1;

    #@30
    invoke-direct {v1}, Lcom/google/android/gms/drive/Drive$1;-><init>()V

    #@33
    sget-object v2, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@35
    new-array v3, v4, [Lcom/google/android/gms/common/api/Scope;

    #@37
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@3a
    sput-object v0, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    #@3c
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@3e
    new-instance v1, Lcom/google/android/gms/drive/Drive$2;

    #@40
    invoke-direct {v1}, Lcom/google/android/gms/drive/Drive$2;-><init>()V

    #@43
    sget-object v2, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@45
    new-array v3, v4, [Lcom/google/android/gms/common/api/Scope;

    #@47
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@4a
    sput-object v0, Lcom/google/android/gms/drive/Drive;->HJ:Lcom/google/android/gms/common/api/Api;

    #@4c
    new-instance v0, Lcom/google/android/gms/drive/internal/p;

    #@4e
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/p;-><init>()V

    #@51
    sput-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    #@53
    new-instance v0, Lcom/google/android/gms/drive/internal/t;

    #@55
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/t;-><init>()V

    #@58
    sput-object v0, Lcom/google/android/gms/drive/Drive;->HK:Lcom/google/android/gms/drive/b;

    #@5a
    new-instance v0, Lcom/google/android/gms/drive/internal/w;

    #@5c
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/w;-><init>()V

    #@5f
    sput-object v0, Lcom/google/android/gms/drive/Drive;->HL:Lcom/google/android/gms/drive/d;

    #@61
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
