.class public Lcom/oneplus/settings/BaseActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field public mOnPressListener:Lcom/oneplus/settings/OnPressListener;

.field private mWarnDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/BaseActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/BaseActivity;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method protected needShowWarningDialog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 37
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/android/settings/R$layout;->settings_base_layout:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 39
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 42
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    new-instance v0, Lcom/oneplus/settings/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/BaseActivity$1;-><init>(Lcom/oneplus/settings/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->performBackEvent()V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->performBackEvent()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 55
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public performBackEvent()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->needShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget v0, Lcom/android/settings/R$string;->oneplus_custom_drop_title:I

    sget v1, Lcom/android/settings/R$string;->menu_cancel:I

    sget v2, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/settings/BaseActivity;->showWarningDialog(III)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setOnPressListener(Lcom/oneplus/settings/OnPressListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/BaseActivity;->mOnPressListener:Lcom/oneplus/settings/OnPressListener;

    return-void
.end method

.method public showWarningDialog(III)V
    .locals 1

    .line 109
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/BaseActivity$3;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/BaseActivity$3;-><init>(Lcom/oneplus/settings/BaseActivity;)V

    .line 111
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/BaseActivity$2;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/BaseActivity$2;-><init>(Lcom/oneplus/settings/BaseActivity;)V

    .line 121
    invoke-virtual {v0, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/BaseActivity;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 131
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
