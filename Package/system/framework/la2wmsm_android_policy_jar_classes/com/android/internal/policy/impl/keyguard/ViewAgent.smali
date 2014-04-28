.class public Lcom/android/internal/policy/impl/keyguard/ViewAgent;
.super Ljava/lang/Object;
.source "ViewAgent.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/IWrap;


# static fields
.field public static LOCK_PACKAGE_NAME:Ljava/lang/String;

.field public static LOCK_WRAP_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private appService:Landroid/os/Handler$Callback;

.field private context:Landroid/content/Context;

.field private methodGetAppService:Ljava/lang/reflect/Method;

.field private methodGetView:Ljava/lang/reflect/Method;

.field private methodOnCreate:Ljava/lang/reflect/Method;

.field private methodOnDestroy:Ljava/lang/reflect/Method;

.field private methodOnPause:Ljava/lang/reflect/Method;

.field private methodOnResume:Ljava/lang/reflect/Method;

.field private methodSetKernelCallback:Ljava/lang/reflect/Method;

.field private obj:Ljava/lang/Object;

.field private wrapClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private wrapConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "com.coco.lock.view.miuiunlock"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "com.coco.lock.view.miuiunlock.ViewWrap"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_WRAP_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/ViewAgent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 219
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v0, v1

    .line 231
    :goto_8
    return-object v0

    .line 223
    :cond_9
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;-><init>()V

    .line 224
    .local v0, "va":Lcom/android/internal/policy/impl/keyguard/ViewAgent;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->loadContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {v0, p2}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->loadClassType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->loadInstance()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 226
    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->loadAppService()V

    .line 227
    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->setRemoteContext(Landroid/content/Context;)V

    goto :goto_8

    :cond_27
    move-object v0, v1

    .line 231
    goto :goto_8
.end method

.method private loadAppService()V
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->getAppService()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->appService:Landroid/os/Handler$Callback;

    .line 237
    return-void
.end method

.method private loadClassType(Ljava/lang/String;)Z
    .registers 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    const/4 v3, 0x1

    :try_start_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    .line 174
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapConstructor:Ljava/lang/reflect/Constructor;

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "onCreate"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnCreate:Ljava/lang/reflect/Method;

    .line 176
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "onDestroy"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnDestroy:Ljava/lang/reflect/Method;

    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "onResume"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnResume:Ljava/lang/reflect/Method;

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "onPause"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnPause:Ljava/lang/reflect/Method;

    .line 179
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "getView"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodGetView:Ljava/lang/reflect/Method;

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "setKernelCallback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/Handler$Callback;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodSetKernelCallback:Ljava/lang/reflect/Method;

    .line 182
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapClass:Ljava/lang/Class;

    const-string v4, "getAppService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodGetAppService:Ljava/lang/reflect/Method;
    :try_end_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_7f} :catch_80
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7f} :catch_86
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7f} :catch_8c

    .line 192
    :goto_7f
    return v1

    .line 184
    :catch_80
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v1, v2

    .line 186
    goto :goto_7f

    .line 187
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_86
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move v1, v2

    .line 189
    goto :goto_7f

    .line 190
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_8c
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v1, v2

    .line 192
    goto :goto_7f
.end method

.method private loadContext(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "currentContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->context:Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_9

    .line 160
    const/4 v1, 0x1

    .line 163
    :goto_8
    return v1

    .line 161
    :catch_9
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 163
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private loadInstance()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->wrapConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->context:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_12} :catch_13
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_12} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_12} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_12} :catch_25

    .line 213
    :goto_12
    return v1

    .line 202
    :catch_13
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v1, v2

    .line 204
    goto :goto_12

    .line 205
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_19
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move v1, v2

    .line 207
    goto :goto_12

    .line 208
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1f
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v1, v2

    .line 210
    goto :goto_12

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_25
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v1, v2

    .line 213
    goto :goto_12
.end method

.method private setRemoteContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "remote"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4e21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 258
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->appService:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 260
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 261
    return-void
.end method


# virtual methods
.method public getAppService()Landroid/os/Handler$Callback;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodGetAppService:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler$Callback;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_e} :catch_1b

    .line 149
    :goto_e
    return-object v1

    .line 141
    :catch_f
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v1, v2

    .line 143
    goto :goto_e

    .line 144
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v1, v2

    .line 146
    goto :goto_e

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1b
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v1, v2

    .line 149
    goto :goto_e
.end method

.method public getView()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodGetView:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_e} :catch_1b

    .line 116
    :goto_e
    return-object v1

    .line 108
    :catch_f
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v1, v2

    .line 110
    goto :goto_e

    .line 111
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v1, v2

    .line 113
    goto :goto_e

    .line 114
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1b
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v1, v2

    .line 116
    goto :goto_e
.end method

.method public logApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4e20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->appService:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 244
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 245
    return-void
.end method

.method public notifyAppSimCardName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4e22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->appService:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 252
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 253
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnCreate:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_15

    .line 55
    :goto_a
    return-void

    .line 48
    :catch_b
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a

    .line 50
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a

    .line 52
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_15
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_a
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnDestroy:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_15

    .line 70
    :goto_a
    return-void

    .line 63
    :catch_b
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a

    .line 65
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_15
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_a
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnPause:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_15

    .line 100
    :goto_a
    return-void

    .line 93
    :catch_b
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a

    .line 97
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_15
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_a
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodOnResume:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_15

    .line 85
    :goto_a
    return-void

    .line 78
    :catch_b
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a

    .line 80
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_15
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_a
.end method

.method public setKernelCallback(Landroid/os/Handler$Callback;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->methodSetKernelCallback:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->obj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_18

    .line 133
    :goto_d
    return-void

    .line 126
    :catch_e
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_d

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_d
.end method

.method public setZorder(Z)V
    .registers 4
    .param p1, "order"    # Z

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4e23

    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->appService:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 268
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 269
    return-void
.end method
