
let rec count_rotation (arr : int list) : int =
  let rec find_min_index (arr : int list) (low : int) (high : int) : int =
    if high < low then 
      arr.[(low mod List.length arr)] 
    else
      let mid = (low + high) / 2 in
      let res = 
        if arr.[mid] > arr.[(mid + 1) mod List.length arr] then 
          mid + 1
        else if arr.[low] <= arr.[mid] then
          find_min_index arr (mid + 1) high 
        else 
          find_min_index arr low (mid - 1)
      in
      res
  in
  find_min_index arr 0 ((List.length arr) - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
