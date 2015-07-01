.class public final Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.super Ljava/lang/Object;
.source "MarshalQueryablePrimitive.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_c

    .line 167
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 169
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_0

    const-class v3, Ljava/lang/Byte;

    if-ne v0, v3, :cond_3

    .line 170
    :cond_0
    if-nez p2, :cond_2

    .line 183
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move v1, v2

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_4

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_5

    .line 172
    :cond_4
    if-eq p2, v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 173
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_6

    const-class v3, Ljava/lang/Float;

    if-ne v0, v3, :cond_7

    .line 174
    :cond_6
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 175
    :cond_7
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_8

    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_9

    .line 176
    :cond_8
    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 177
    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_a

    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_b

    .line 178
    :cond_a
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 179
    :cond_b
    const-class v3, Landroid/util/Rational;

    if-ne v0, v3, :cond_c

    .line 180
    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    move v1, v2

    goto :goto_0

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    move v1, v2

    .line 183
    goto :goto_0
.end method
