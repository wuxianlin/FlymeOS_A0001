.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 9
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 597
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 598
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 600
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 601
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 602
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 603
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 623
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 625
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 626
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 627
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 628
    return-void

    .line 604
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 605
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 609
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 610
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 611
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 612
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 613
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 615
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 617
    :cond_5
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 618
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 620
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
