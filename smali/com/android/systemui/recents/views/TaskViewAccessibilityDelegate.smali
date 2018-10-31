.class public Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "TaskViewAccessibilityDelegate.java"


# instance fields
.field protected final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f110485

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f110483

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0033

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f110484

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0034

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private simulateDragIntoMultiwindow(Lcom/android/systemui/recents/views/DockState;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/views/DockState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/systemui/recents/views/DockState;->TOP:Lcom/android/systemui/recents/views/DockState;

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/systemui/recents/views/DockState;->LEFT:Lcom/android/systemui/recents/views/DockState;

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v5, 0x7f0a0033

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/systemui/recents/views/DockState;->RIGHT:Lcom/android/systemui/recents/views/DockState;

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const v0, 0x7f0a0035

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->TOP:Lcom/android/systemui/recents/views/DockState;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->simulateDragIntoMultiwindow(Lcom/android/systemui/recents/views/DockState;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0033

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->LEFT:Lcom/android/systemui/recents/views/DockState;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->simulateDragIntoMultiwindow(Lcom/android/systemui/recents/views/DockState;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0034

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->RIGHT:Lcom/android/systemui/recents/views/DockState;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->simulateDragIntoMultiwindow(Lcom/android/systemui/recents/views/DockState;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
