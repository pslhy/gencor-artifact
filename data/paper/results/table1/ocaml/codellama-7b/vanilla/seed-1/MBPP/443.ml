let rec largest_neg (list1 : int list) : int =
match list1 with
| [] -> 0
| x :: [] -> if x < 0 then x else 0
| x :: y :: tail ->
let left = largest_neg (x :: tail) in
let right = largest_neg (y :: tail) in
if left > right then left else right


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
