.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 1062
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 1063
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1065
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 1066
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 1068
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1077
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$701(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 10

    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1096
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 1097
    .local v3, "hOffset":I
    if-eqz v0, :cond_2

    .line 1098
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1099
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 1104
    :goto_0
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v4

    .line 1105
    .local v4, "spinnerPaddingLeft":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v5

    .line 1106
    .local v5, "spinnerPaddingRight":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getWidth()I

    move-result v6

    .line 1108
    .local v6, "spinnerWidth":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 1109
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 1111
    .local v1, "contentWidth":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 1113
    .local v2, "contentWidthLimit":I
    if-le v1, v2, :cond_0

    .line 1114
    move v1, v2

    .line 1116
    :cond_0
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 1124
    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :goto_1
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1125
    sub-int v7, v6, v5

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 1129
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 1130
    return-void

    .line 1099
    .end local v4    # "spinnerPaddingLeft":I
    .end local v5    # "spinnerPaddingRight":I
    .end local v6    # "spinnerWidth":I
    :cond_1
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v3, v7

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1118
    .restart local v4    # "spinnerPaddingLeft":I
    .restart local v5    # "spinnerPaddingRight":I
    .restart local v6    # "spinnerWidth":I
    :cond_3
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 1119
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 1121
    :cond_4
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 1127
    :cond_5
    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1081
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1082
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 1083
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1091
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 1092
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v3

    .line 1135
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1137
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 1138
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1139
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1140
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1141
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1142
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1143
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 1145
    if-eqz v3, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1155
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 1156
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1170
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1171
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
