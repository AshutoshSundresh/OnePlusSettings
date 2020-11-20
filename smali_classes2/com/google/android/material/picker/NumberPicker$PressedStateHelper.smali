.class Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 2204
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 2229
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2230
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2231
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2232
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 2236
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2237
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2238
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2239
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    .line 2215
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2216
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2217
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2218
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1200(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2219
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1, v0}, Lcom/google/android/material/picker/NumberPicker;->access$1202(Lcom/google/android/material/picker/NumberPicker;Z)Z

    .line 2220
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 2222
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1, v0}, Lcom/google/android/material/picker/NumberPicker;->access$1402(Lcom/google/android/material/picker/NumberPicker;Z)Z

    .line 2223
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1400(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2224
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 2244
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2260
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 2271
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1400(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2272
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2273
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2272
    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2275
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1400(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->access$1402(Lcom/google/android/material/picker/NumberPicker;Z)Z

    .line 2276
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 2262
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1200(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2263
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2264
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2263
    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2266
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1200(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->access$1202(Lcom/google/android/material/picker/NumberPicker;Z)Z

    .line 2267
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 2246
    :cond_5
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 2253
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->access$1402(Lcom/google/android/material/picker/NumberPicker;Z)Z

    .line 2254
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 2248
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->access$1202(Lcom/google/android/material/picker/NumberPicker;Z)Z

    .line 2249
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method
