
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
match test_list with
| [] -> []
| hd :: tl ->
let (left, right) = hd in
let sums = find_combinations tl in
match sums with
| [] -> [(left, right)]
| x :: rest ->
((left, right) :: x) :: (find_combinations (x :: rest)) in
let combinations = find_combinations (2, 3), (4, 5), (6, 7) in
Printf.printf "%d" (List.length combinations); (* prints 8 *)
0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
