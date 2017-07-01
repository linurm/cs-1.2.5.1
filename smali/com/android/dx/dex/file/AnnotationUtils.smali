.class public final Lcom/android/dx/dex/file/AnnotationUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ACCESS_FLAGS_STRING:Lcom/android/dx/rop/cst/CstString;

.field private static final ANNOTATION_DEFAULT_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final ENCLOSING_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final ENCLOSING_METHOD_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final INNER_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final MEMBER_CLASSES_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final NAME_STRING:Lcom/android/dx/rop/cst/CstString;

.field private static final SIGNATURE_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final THROWS_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final VALUE_STRING:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "Ldalvik/annotation/AnnotationDefault;"

    #@2
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@c
    const-string v0, "Ldalvik/annotation/EnclosingClass;"

    #@e
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@18
    const-string v0, "Ldalvik/annotation/EnclosingMethod;"

    #@1a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@24
    const-string v0, "Ldalvik/annotation/InnerClass;"

    #@26
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@30
    const-string v0, "Ldalvik/annotation/MemberClasses;"

    #@32
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@35
    move-result-object v0

    #@36
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@39
    move-result-object v0

    #@3a
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@3c
    const-string v0, "Ldalvik/annotation/Signature;"

    #@3e
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@41
    move-result-object v0

    #@42
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@48
    const-string v0, "Ldalvik/annotation/Throws;"

    #@4a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@4d
    move-result-object v0

    #@4e
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@54
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    #@56
    const-string v1, "accessFlags"

    #@58
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@5b
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lcom/android/dx/rop/cst/CstString;

    #@5d
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    #@5f
    const-string v1, "name"

    #@61
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@64
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lcom/android/dx/rop/cst/CstString;

    #@66
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    #@68
    const-string v1, "value"

    #@6a
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@6d
    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@6f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeAnnotationDefault(Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotation;
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    #@2
    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@4
    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@9
    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    #@b
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@d
    new-instance v3, Lcom/android/dx/rop/cst/CstAnnotation;

    #@f
    invoke-direct {v3, p0}, Lcom/android/dx/rop/cst/CstAnnotation;-><init>(Lcom/android/dx/rop/annotation/Annotation;)V

    #@12
    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@15
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@18
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@1b
    return-object v0
.end method

.method private static makeCstArray(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/cst/CstArray;
    .registers 5

    #@0
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@3
    move-result v1

    #@4
    new-instance v2, Lcom/android/dx/rop/cst/CstArray$List;

    #@6
    invoke-direct {v2, v1}, Lcom/android/dx/rop/cst/CstArray$List;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v1, :cond_1a

    #@c
    invoke-interface {p0, v0}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v0, v3}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstArray$List;->setImmutable()V

    #@1d
    new-instance v0, Lcom/android/dx/rop/cst/CstArray;

    #@1f
    invoke-direct {v0, v2}, Lcom/android/dx/rop/cst/CstArray;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    #@22
    return-object v0
.end method

.method public static makeEnclosingClass(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/rop/annotation/Annotation;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    #@2
    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@4
    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@9
    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    #@b
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@d
    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@10
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@13
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@16
    return-object v0
.end method

.method public static makeEnclosingMethod(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/annotation/Annotation;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    #@2
    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@4
    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@9
    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    #@b
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@d
    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@10
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@13
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@16
    return-object v0
.end method

.method public static makeInnerClass(Lcom/android/dx/rop/cst/CstString;I)Lcom/android/dx/rop/annotation/Annotation;
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    #@2
    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@4
    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@9
    if-eqz p0, :cond_27

    #@b
    :goto_b
    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    #@d
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lcom/android/dx/rop/cst/CstString;

    #@f
    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@12
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@15
    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    #@17
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lcom/android/dx/rop/cst/CstString;

    #@19
    invoke-static {p1}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@20
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@26
    return-object v0

    #@27
    :cond_27
    sget-object p0, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    #@29
    goto :goto_b
.end method

.method public static makeMemberClasses(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/annotation/Annotation;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeCstArray(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/cst/CstArray;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/dx/rop/annotation/Annotation;

    #@6
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@8
    sget-object v3, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@d
    new-instance v2, Lcom/android/dx/rop/annotation/NameValuePair;

    #@f
    sget-object v3, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@11
    invoke-direct {v2, v3, v0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@14
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@17
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@1a
    return-object v1
.end method

.method public static makeSignature(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/annotation/Annotation;
    .registers 11

    #@0
    const/16 v9, 0x4c

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v3, Lcom/android/dx/rop/annotation/Annotation;

    #@5
    sget-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@7
    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@9
    invoke-direct {v3, v0, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@c
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    new-instance v6, Ljava/util/ArrayList;

    #@16
    const/16 v0, 0x14

    #@18
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1b
    move v2, v1

    #@1c
    :goto_1c
    if-ge v2, v5, :cond_4d

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v7

    #@22
    add-int/lit8 v0, v2, 0x1

    #@24
    if-ne v7, v9, :cond_44

    #@26
    :goto_26
    if-ge v0, v5, :cond_32

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v7

    #@2c
    const/16 v8, 0x3b

    #@2e
    if-ne v7, v8, :cond_3b

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    :cond_32
    :goto_32
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    move v2, v0

    #@3a
    goto :goto_1c

    #@3b
    :cond_3b
    const/16 v8, 0x3c

    #@3d
    if-eq v7, v8, :cond_32

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_26

    #@42
    :cond_42
    add-int/lit8 v0, v0, 0x1

    #@44
    :cond_44
    if-ge v0, v5, :cond_32

    #@46
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v7

    #@4a
    if-ne v7, v9, :cond_42

    #@4c
    goto :goto_32

    #@4d
    :cond_4d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v2

    #@51
    new-instance v4, Lcom/android/dx/rop/cst/CstArray$List;

    #@53
    invoke-direct {v4, v2}, Lcom/android/dx/rop/cst/CstArray$List;-><init>(I)V

    #@56
    :goto_56
    if-ge v1, v2, :cond_6a

    #@58
    new-instance v5, Lcom/android/dx/rop/cst/CstString;

    #@5a
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Ljava/lang/String;

    #@60
    invoke-direct {v5, v0}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {v4, v1, v5}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    #@66
    add-int/lit8 v0, v1, 0x1

    #@68
    move v1, v0

    #@69
    goto :goto_56

    #@6a
    :cond_6a
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstArray$List;->setImmutable()V

    #@6d
    new-instance v0, Lcom/android/dx/rop/annotation/NameValuePair;

    #@6f
    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@71
    new-instance v2, Lcom/android/dx/rop/cst/CstArray;

    #@73
    invoke-direct {v2, v4}, Lcom/android/dx/rop/cst/CstArray;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    #@76
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@79
    invoke-virtual {v3, v0}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@7c
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@7f
    return-object v3
.end method

.method public static makeThrows(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/annotation/Annotation;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeCstArray(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/cst/CstArray;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/dx/rop/annotation/Annotation;

    #@6
    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lcom/android/dx/rop/cst/CstType;

    #@8
    sget-object v3, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    #@d
    new-instance v2, Lcom/android/dx/rop/annotation/NameValuePair;

    #@f
    sget-object v3, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    #@11
    invoke-direct {v2, v3, v0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    #@14
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    #@17
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    #@1a
    return-object v1
.end method
