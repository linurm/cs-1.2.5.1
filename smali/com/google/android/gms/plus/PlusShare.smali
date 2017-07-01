.class public final Lcom/google/android/gms/plus/PlusShare;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusShare$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_CALL_TO_ACTION:Ljava/lang/String; = "com.google.android.apps.plus.CALL_TO_ACTION"

.field public static final EXTRA_CONTENT_DEEP_LINK_ID:Ljava/lang/String; = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

.field public static final EXTRA_CONTENT_DEEP_LINK_METADATA:Ljava/lang/String; = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA"

.field public static final EXTRA_CONTENT_URL:Ljava/lang/String; = "com.google.android.apps.plus.CONTENT_URL"

.field public static final EXTRA_IS_INTERACTIVE_POST:Ljava/lang/String; = "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

.field public static final EXTRA_SENDER_ID:Ljava/lang/String; = "com.google.android.apps.plus.SENDER_ID"

.field public static final KEY_CALL_TO_ACTION_DEEP_LINK_ID:Ljava/lang/String; = "deepLinkId"

.field public static final KEY_CALL_TO_ACTION_LABEL:Ljava/lang/String; = "label"

.field public static final KEY_CALL_TO_ACTION_URL:Ljava/lang/String; = "url"

.field public static final KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL:Ljava/lang/String; = "thumbnailUrl"

.field public static final KEY_CONTENT_DEEP_LINK_METADATA_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_CONTENT_DEEP_LINK_ID:Ljava/lang/String; = "deep_link_id"


# direct methods
.method protected constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 6

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "title"

    #@7
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    const-string v1, "description"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    if-eqz p2, :cond_1a

    #@11
    const-string v1, "thumbnailUrl"

    #@13
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    :cond_1a
    return-object v0
.end method

.method protected static bv(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_f

    #@7
    const-string v1, "GooglePlusPlatform"

    #@9
    const-string v2, "The provided deep-link ID is empty."

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    const-string v1, " "

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1f

    #@17
    const-string v1, "GooglePlusPlatform"

    #@19
    const-string v2, "Spaces are not allowed in deep-link IDs."

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    goto :goto_e

    #@1f
    :cond_1f
    const/4 v0, 0x1

    #@20
    goto :goto_e
.end method

.method public static createPerson(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/plus/model/people/Person;
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_f

    #@7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v1, "MinimalPerson ID must not be empty."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1d

    #@15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v1, "Display name must not be empty."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ks;

    #@1f
    const/4 v4, 0x0

    #@20
    move-object v1, p1

    #@21
    move-object v2, p0

    #@22
    move-object v5, v3

    #@23
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ks;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ks$c;ILjava/lang/String;)V

    #@26
    return-object v0
.end method

.method public static getDeepLinkId(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_13

    #@3
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_13

    #@9
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@c
    move-result-object v0

    #@d
    const-string v1, "deep_link_id"

    #@f
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    :cond_13
    return-object v0
.end method
