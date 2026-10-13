let rec find_min_diff (arr : int list) (n : int) : int =
  if n = 1 then
    0
  else if n = 2 then
    abs (arr.(0) - arr.(1))
  else
    let min_diff = find_min_diff (arr |> List.sort_uniq compare) (n-1) in
    let cur_diff = abs (arr.(n-1) - arr.(n-2)) in
    if min_diff > cur_diff then cur_diff else min_diff


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
