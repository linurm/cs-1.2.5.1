.class public final Lcom/android/dx/rop/code/Exceptions;
.super Ljava/lang/Object;


# static fields
.field public static final LIST_Error:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_ArithmeticException:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_ClassCastException:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_NegativeArraySizeException:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_NullPointerException:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_ArrayIndexOutOfBounds:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_ArrayIndex_ArrayStore:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_IllegalMonitorStateException:Lcom/android/dx/rop/type/StdTypeList;

.field public static final TYPE_ArithmeticException:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_ArrayIndexOutOfBoundsException:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_ArrayStoreException:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_ClassCastException:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_Error:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_IllegalMonitorStateException:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_NegativeArraySizeException:Lcom/android/dx/rop/type/Type;

.field public static final TYPE_NullPointerException:Lcom/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-string v0, "Ljava/lang/ArithmeticException;"

    #@2
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArithmeticException:Lcom/android/dx/rop/type/Type;

    #@8
    const-string v0, "Ljava/lang/ArrayIndexOutOfBoundsException;"

    #@a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/android/dx/rop/type/Type;

    #@10
    const-string v0, "Ljava/lang/ArrayStoreException;"

    #@12
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayStoreException:Lcom/android/dx/rop/type/Type;

    #@18
    const-string v0, "Ljava/lang/ClassCastException;"

    #@1a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_ClassCastException:Lcom/android/dx/rop/type/Type;

    #@20
    const-string v0, "Ljava/lang/Error;"

    #@22
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@28
    const-string v0, "Ljava/lang/IllegalMonitorStateException;"

    #@2a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_IllegalMonitorStateException:Lcom/android/dx/rop/type/Type;

    #@30
    const-string v0, "Ljava/lang/NegativeArraySizeException;"

    #@32
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_NegativeArraySizeException:Lcom/android/dx/rop/type/Type;

    #@38
    const-string v0, "Ljava/lang/NullPointerException;"

    #@3a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@3d
    move-result-object v0

    #@3e
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/android/dx/rop/type/Type;

    #@40
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@42
    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error:Lcom/android/dx/rop/type/StdTypeList;

    #@48
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@4a
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArithmeticException:Lcom/android/dx/rop/type/Type;

    #@4c
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@4f
    move-result-object v0

    #@50
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_ArithmeticException:Lcom/android/dx/rop/type/StdTypeList;

    #@52
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@54
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_ClassCastException:Lcom/android/dx/rop/type/Type;

    #@56
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@59
    move-result-object v0

    #@5a
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_ClassCastException:Lcom/android/dx/rop/type/StdTypeList;

    #@5c
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@5e
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_NegativeArraySizeException:Lcom/android/dx/rop/type/Type;

    #@60
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@63
    move-result-object v0

    #@64
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_NegativeArraySizeException:Lcom/android/dx/rop/type/StdTypeList;

    #@66
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@68
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/android/dx/rop/type/Type;

    #@6a
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@6d
    move-result-object v0

    #@6e
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_NullPointerException:Lcom/android/dx/rop/type/StdTypeList;

    #@70
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@72
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/android/dx/rop/type/Type;

    #@74
    sget-object v2, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/android/dx/rop/type/Type;

    #@76
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@79
    move-result-object v0

    #@7a
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_Null_ArrayIndexOutOfBounds:Lcom/android/dx/rop/type/StdTypeList;

    #@7c
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@7e
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/android/dx/rop/type/Type;

    #@80
    sget-object v2, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/android/dx/rop/type/Type;

    #@82
    sget-object v3, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayStoreException:Lcom/android/dx/rop/type/Type;

    #@84
    invoke-static {v0, v1, v2, v3}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@87
    move-result-object v0

    #@88
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_Null_ArrayIndex_ArrayStore:Lcom/android/dx/rop/type/StdTypeList;

    #@8a
    sget-object v0, Lcom/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/android/dx/rop/type/Type;

    #@8c
    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/android/dx/rop/type/Type;

    #@8e
    sget-object v2, Lcom/android/dx/rop/code/Exceptions;->TYPE_IllegalMonitorStateException:Lcom/android/dx/rop/type/Type;

    #@90
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@93
    move-result-object v0

    #@94
    sput-object v0, Lcom/android/dx/rop/code/Exceptions;->LIST_Error_Null_IllegalMonitorStateException:Lcom/android/dx/rop/type/StdTypeList;

    #@96
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
