.class public Landroid/opengl/EGLContext;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLContext.java"


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    instance-of v3, p1, Landroid/opengl/EGLContext;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/opengl/EGLContext;

    .line 35
    .local v0, "that":Landroid/opengl/EGLContext;
    invoke-virtual {p0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
