.class public Lcom/tf/key/prop;
.super Ljava/lang/Object;
.source "prop.java"


# static fields
.field public static packname:Ljava/lang/String;

.field public static temp:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v2, "init"

    sput-object v2, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 6
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
