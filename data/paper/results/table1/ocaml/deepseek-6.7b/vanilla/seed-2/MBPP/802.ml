let rec count_rotation (arr : int list) : int =
  let rec find_min_index (arr : int list) (low : int) (high : int) : int =
    if high < low then
      arr.[0]
    else
      let mid = (low + high) / 2 in
      if mid < high && arr.[(mid + 1) mod Array.length arr] < arr.{mid} then
        arr.[(mid + 1) mod Array.length arr]
      else if mid > low && arr.{mid} < arr.[(mid - 1) mod Array.length arr] then
        arr.{mid}
      else if arr.{high} > arr.{mid} then
        find_min_index arr low (mid - 1)
      else
        find_min_index arr (mid + 1) high
  in
  find_min_index arr 0 (Array.length arr - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
