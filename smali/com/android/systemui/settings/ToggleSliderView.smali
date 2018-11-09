.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider;


# instance fields
.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$2;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const v0, 0x7f0d015f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v3, 0x7f0a0357

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0a030e

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v3, 0x7f0a01a7

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method
