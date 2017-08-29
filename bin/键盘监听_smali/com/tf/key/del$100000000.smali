.class Lcom/tf/key/del$100000000;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "del.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tf/key/del;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/tf/key/del;

.field private final val$p1:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/tf/key/del;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tf/key/del$100000000;->this$0:Lcom/tf/key/del;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tf/key/del$100000000;->val$p1:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    return-void
.end method

.method static access$0(Lcom/tf/key/del$100000000;)Lcom/tf/key/del;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tf/key/del$100000000;->this$0:Lcom/tf/key/del;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            ")V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/tf/key/del$100000000;->val$p1:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v4, v4, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    .line 38
    move-object v4, v1

    iget-object v4, v4, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 39
    move-object v4, v1

    iget-object v4, v4, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    .line 44
    sget-object v4, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    sget-object v5, Lcom/tf/key/prop;->temp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    sget-object v4, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    sput-object v4, Lcom/tf/key/prop;->temp:Ljava/lang/String;

    .line 47
    move v4, v2

    const/16 v5, 0x43

    if-ne v4, v5, :cond_0

    .line 48
    const-string v4, "  <删除>  "

    invoke-static {v4}, Lcom/tf/key/file;->jiaru(Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v4, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    sput-object v4, Lcom/tf/key/prop;->temp:Ljava/lang/String;

    .line 52
    move v4, v2

    const/16 v5, 0x43

    if-ne v4, v5, :cond_0

    .line 53
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "  <删除>   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tf/key/file;->jiaru(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
