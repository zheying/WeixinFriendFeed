.class public Lnet/sqlcipher/CrossProcessCursorWrapper;
.super Lnet/sqlcipher/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Lnet/sqlcipher/Cursor;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWrapper;-><init>(Lnet/sqlcipher/Cursor;)V

    .line 10
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 19
    invoke-static {p0, p1, p2}, Lnet/sqlcipher/DatabaseUtils;->cursorFillWindow(Lnet/sqlcipher/Cursor;ILandroid/database/CursorWindow;)V

    .line 20
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
