.class Lcom/google/android/gms/tagmanager/ch;
.super Lcom/google/android/gms/tagmanager/dc;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final agJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->ag:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/ch;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->cF:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/ch;->agJ:Ljava/lang/String;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ch;->ID:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dc;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ch;->agJ:Ljava/lang/String;

    #@2
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_24

    #@12
    const/16 v0, 0x42

    #@14
    :goto_14
    :try_start_14
    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_1f
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_14 .. :try_end_1f} :catch_21

    #@1f
    move-result v0

    #@20
    :goto_20
    return v0

    #@21
    :catch_21
    move-exception v0

    #@22
    const/4 v0, 0x0

    #@23
    goto :goto_20

    #@24
    :cond_24
    const/16 v0, 0x40

    #@26
    goto :goto_14
.end method
