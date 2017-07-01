.class public Landroid/support/v4/util/DebugUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4

    #@0
    if-nez p0, :cond_8

    #@2
    const-string v0, "null"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_18

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    if-gtz v1, :cond_2e

    #@18
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const/16 v1, 0x2e

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@25
    move-result v1

    #@26
    if-lez v1, :cond_2e

    #@28
    add-int/lit8 v1, v1, 0x1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    :cond_2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    const/16 v0, 0x7b

    #@33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@39
    move-result v0

    #@3a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_7
.end method
