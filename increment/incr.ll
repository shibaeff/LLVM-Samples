; ModuleID = 'incr.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %i, align 4
  store i32 %7, i32* %i, align 4
  ret i32 0
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}