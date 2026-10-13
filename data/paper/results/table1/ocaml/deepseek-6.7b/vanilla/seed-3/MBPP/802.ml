let rec count_rotation (arr : int list) : int =
  let rec helper (low : int) (high : int) : int =
    if high < low then 0
    else if low = high then low
    else 
      let mid = low + ((high - low) / 2) in
      if mid < high && arr.(mid + 1) < arr.(mid) then mid + 1
      elif mid > low && arr.(mid) < arr.(mid - 1) then mid
      elif arr.(high) > arr.(mid) then helper low mid - 1
      else helper (mid + 1) high
  in
  let n = List.length arr in
  helper 0 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
