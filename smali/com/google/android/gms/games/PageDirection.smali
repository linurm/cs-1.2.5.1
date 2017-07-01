.class public final Lcom/google/android/gms/games/PageDirection;
.super Ljava/lang/Object;


# static fields
.field public static final NEXT:I = 0x0

.field public static final NONE:I = -0x1

.field public static final PREV:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    const-string v1, "Uninstantiable"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@a
    throw v0
.end method
