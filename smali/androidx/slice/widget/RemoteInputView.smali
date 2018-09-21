.class public Landroidx/slice/widget/RemoteInputView;
.super Landroid/widget/LinearLayout;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/RemoteInputView$RemoteEditText;
    }
.end annotation


# static fields
.field public static final VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private mAction:Landroidx/slice/SliceItem;

.field private mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mRemoteInputs:[Landroid/app/RemoteInput;

.field private mResetting:Z

.field private mRevealCx:I

.field private mRevealCy:I

.field private mRevealR:I

.field private mSendButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/slice/widget/RemoteInputView;)Landroidx/slice/widget/RemoteInputView$RemoteEditText;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/slice/widget/RemoteInputView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    return-void
.end method

.method static synthetic access$300(Landroidx/slice/widget/RemoteInputView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->onDefocus()V

    return-void
.end method

.method private focus()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-boolean v1, v0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setSelection(I)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->requestFocus()Z

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroidx/slice/widget/RemoteInputView;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_remote_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/RemoteInputView;

    sget-object v1, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onDefocus()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->setVisibility(I)V

    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/RemoteInputView;->mResetting:Z

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->onDefocus()V

    iput-boolean v1, p0, Landroidx/slice/widget/RemoteInputView;->mResetting:Z

    return-void
.end method

.method private sendRemoteInput()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v2, v1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setEnabled(Z)V

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-boolean v3, v2, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    :try_start_0
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mAction:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->reset()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "RemoteInput"

    const-string v5, "Unable to send remote input result"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Failure sending pending intent for inline reply :("

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->reset()V

    :goto_0
    return-void
.end method

.method private updateSendButton()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/slice/widget/RemoteInputView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/RemoteInputView;->removeDetachedView(Landroid/view/View;Z)V

    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchFinishTemporaryDetach()V

    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchStartTemporaryDetach()V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method public focusAnimated()V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCx:I

    iget v1, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCy:I

    const/4 v2, 0x0

    iget v3, p0, Landroidx/slice/widget/RemoteInputView;->mRevealR:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->focus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Landroidx/slice/view/R$id;->remote_input_progress:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    sget v0, Landroidx/slice/view/R$id;->remote_input_send:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    new-instance v2, Landroidx/slice/widget/RemoteInputView$1;

    invoke-direct {v2, p0}, Landroidx/slice/widget/RemoteInputView$1;-><init>(Landroidx/slice/widget/RemoteInputView;)V

    invoke-virtual {v1, v2}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-static {v0, p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->access$202(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroidx/slice/widget/RemoteInputView;)Landroidx/slice/widget/RemoteInputView;

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/RemoteInputView;->mResetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setAction(Landroidx/slice/SliceItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView;->mAction:Landroidx/slice/SliceItem;

    return-void
.end method

.method public setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V
    .locals 2

    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    iput-object p2, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRevealParameters(III)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCx:I

    iput p2, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCy:I

    iput p3, p0, Landroidx/slice/widget/RemoteInputView;->mRevealR:I

    return-void
.end method
