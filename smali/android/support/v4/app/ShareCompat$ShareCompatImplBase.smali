.class Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/ShareCompat$ShareCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 9

    #@0
    const/16 v4, 0x20

    #@2
    move v0, p2

    #@3
    :goto_3
    if-ge v0, p3, :cond_6a

    #@5
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v1

    #@9
    const/16 v2, 0x3c

    #@b
    if-ne v1, v2, :cond_15

    #@d
    const-string v1, "&lt;"

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_3

    #@15
    :cond_15
    const/16 v2, 0x3e

    #@17
    if-ne v1, v2, :cond_1f

    #@19
    const-string v1, "&gt;"

    #@1b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    goto :goto_12

    #@1f
    :cond_1f
    const/16 v2, 0x26

    #@21
    if-ne v1, v2, :cond_29

    #@23
    const-string v1, "&amp;"

    #@25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    goto :goto_12

    #@29
    :cond_29
    const/16 v2, 0x7e

    #@2b
    if-gt v1, v2, :cond_2f

    #@2d
    if-ge v1, v4, :cond_4c

    #@2f
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v3, "&#"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string v2, ";"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_12

    #@4c
    :cond_4c
    if-ne v1, v4, :cond_66

    #@4e
    :goto_4e
    add-int/lit8 v1, v0, 0x1

    #@50
    if-ge v1, p3, :cond_62

    #@52
    add-int/lit8 v1, v0, 0x1

    #@54
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@57
    move-result v1

    #@58
    if-ne v1, v4, :cond_62

    #@5a
    const-string v1, "&nbsp;"

    #@5c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_4e

    #@62
    :cond_62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    goto :goto_12

    #@66
    :cond_66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    goto :goto_12

    #@6a
    :cond_6a
    return-void
.end method


# virtual methods
.method public configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
    .registers 4

    #@0
    invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@7
    return-void
.end method

.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v2

    #@a
    invoke-static {v0, p1, v1, v2}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    #@d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
