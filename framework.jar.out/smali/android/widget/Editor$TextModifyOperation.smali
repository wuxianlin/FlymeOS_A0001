.class public Landroid/widget/Editor$TextModifyOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextModifyOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/widget/Editor$TextModifyOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mOldText:Ljava/lang/CharSequence;

.field mRangeEnd:I

.field mRangeStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4323
    new-instance v0, Landroid/widget/Editor$TextModifyOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$TextModifyOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$TextModifyOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/content/UndoOwner;)V
    .locals 0
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 4266
    invoke-direct {p0, p1}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 4267
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 4270
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 4271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 4272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 4273
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 4274
    return-void
.end method

.method private swapText()V
    .locals 6

    .prologue
    .line 4293
    invoke-virtual {p0}, Landroid/widget/Editor$TextModifyOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4294
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 4296
    .local v1, "editable":Landroid/text/Editable;
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v4, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-lt v3, v4, :cond_0

    .line 4297
    const/4 v0, 0x0

    .line 4306
    .local v0, "curText":Ljava/lang/CharSequence;
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 4307
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v4, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    invoke-interface {v1, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 4308
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iput v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 4313
    :goto_1
    iput-object v0, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 4314
    return-void

    .line 4299
    .end local v0    # "curText":Ljava/lang/CharSequence;
    :cond_0
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v4, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    invoke-interface {v1, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "curText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 4310
    :cond_1
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v4, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    iget-object v5, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4311
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget-object v4, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    goto :goto_1
.end method


# virtual methods
.method public commit()V
    .locals 0

    .prologue
    .line 4278
    return-void
.end method

.method public redo()V
    .locals 0

    .prologue
    .line 4287
    invoke-direct {p0}, Landroid/widget/Editor$TextModifyOperation;->swapText()V

    .line 4288
    return-void
.end method

.method public undo()V
    .locals 0

    .prologue
    .line 4282
    invoke-direct {p0}, Landroid/widget/Editor$TextModifyOperation;->swapText()V

    .line 4283
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4318
    iget v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4319
    iget v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4320
    iget-object v0, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 4321
    return-void
.end method
