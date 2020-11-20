.class Lcom/android/settings/users/EditUserPhotoController$6;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic val$cropped:Z

.field final synthetic val$data:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    iput-boolean p2, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$cropped:Z

    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    const-string p1, "Cannot close image stream"

    const-string v0, "EditUserPhotoController"

    .line 277
    iget-boolean v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$cropped:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    .line 281
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 289
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p0, v2

    :goto_1
    :try_start_3
    const-string v3, "Cannot find image file"

    .line 284
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    .line 289
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 291
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v2

    :catchall_1
    move-exception v1

    move-object v2, p0

    :goto_3
    if-eqz v2, :cond_2

    .line 289
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 291
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    :cond_2
    :goto_4
    throw v1

    .line 297
    :cond_3
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {p1}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 299
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    :try_start_6
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    .line 303
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 304
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v1, :cond_4

    .line 309
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 311
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 312
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 313
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v2

    add-int/2addr v2, v4

    invoke-direct {v5, v3, v4, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 315
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v3}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v3

    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {p0}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 316
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 317
    invoke-virtual {v0, v1, v5, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1

    :catch_5
    :cond_4
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$6;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0, p1}, Lcom/android/settings/users/EditUserPhotoController;->access$802(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 330
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    .line 331
    invoke-static {p1}, Lcom/android/settings/users/EditUserPhotoController;->access$1000(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$800(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 330
    invoke-static {p1, v0}, Lcom/android/settings/users/EditUserPhotoController;->access$902(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 332
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {p1}, Lcom/android/settings/users/EditUserPhotoController;->access$1000(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$900(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "TakeEditUserPhoto2.jpg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 335
    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {p0}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "CropEditUserPhoto.jpg"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
