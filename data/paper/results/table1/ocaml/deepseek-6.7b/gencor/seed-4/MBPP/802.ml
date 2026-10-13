
let rec count_rotation (arr : int list) : int =
  let rec find_rotation (arr : int list) (low : int) (high : int) : int =
    if high < low then
      0
    else if high = low then
      low
    else
      let mid = low + ((high - low) / 2) in
      if mid < high && arr.(mid + 1) < arr.(mid) then
        mid + 1
      else if mid > low && arr.(mid) < arr.(mid - 1) then
        mid
      else if arr.(high) > arr.(mid) then
        find_rotation arr low mid
      else
        find_rotation arr (mid + 1) high
  in
  let n = List.length arr in
  find_rotation arr 0 (n - 1)
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
