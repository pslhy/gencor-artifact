(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
let rec count_rotation (arr : int list) : int =
  let rec find_rotation (arr : int list) (low : int) (high : int) : int =
    if high < low then
      0
    let mid = low + (high - low) / 2
    let next = (mid + 1) mod (List.length arr)
    let prev = (mid - 1) mod (List.length arr)
    if arr.[next] >= arr.[high] && arr.[prev] >= arr.[mid] then
      mid + 1
    else if arr.[mid] <= arr.[high] then
      find_rotation arr low mid
    else
      find_rotation arr mid high
  in
  find_rotation arr 0 (List.length arr - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_rotation (arr : int list) : int =
  let rec find_rotation (arr : int list) (low : int) (high : int) : int =
    if high < low then
      0
    else
      let mid = low + (high - low) / 2 in
      let next = (mid + 1) mod (List.length arr) in
      let prev = (mid - 1) mod (List.length arr) in
      if arr.[next] >= arr.[high] && arr.[prev] >= arr.[mid] then
        mid + 1
      else if arr.[mid] <= arr.[high] then
        find_rotation arr low mid
      else
        find_rotation arr mid high
  in
  find_rotation arr 0 (List.length arr - 1)

