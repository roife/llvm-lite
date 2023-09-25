; ModuleID = '3.c'
source_filename = "3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i32 @f(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %7, label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %0, %2 ], [ %15, %14 ]
  %6 = icmp sgt i32 %5, 16
  br i1 %6, label %27, label %18

7:                                                ; preds = %2, %14
  %8 = phi i32 [ %15, %14 ], [ %0, %2 ]
  %9 = phi i32 [ %16, %14 ], [ 1, %2 ]
  %10 = icmp sgt i32 %8, 5
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = sdiv i32 %1, %9
  %13 = add nsw i32 %12, %8
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %13, %11 ], [ %8, %7 ]
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp slt i32 %16, %15
  br i1 %17, label %7, label %4, !llvm.loop !5

18:                                               ; preds = %4
  %19 = icmp sgt i32 %5, 5
  br i1 %19, label %20, label %27

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %24, %20 ], [ %5, %18 ]
  %22 = phi i32 [ %25, %20 ], [ 1, %18 ]
  %23 = sdiv i32 %1, %22
  %24 = add nsw i32 %23, %21
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp slt i32 %25, %24
  br i1 %26, label %20, label %27, !llvm.loop !8

27:                                               ; preds = %20, %18, %4
  %28 = phi i32 [ 20, %4 ], [ 4, %18 ], [ %24, %20 ]
  %29 = icmp sgt i32 %28, 10
  %30 = select i1 %29, i32 %28, i32 10
  %31 = add nsw i32 %30, %1
  ret i32 %31
}

attributes #0 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 14.0.6"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}