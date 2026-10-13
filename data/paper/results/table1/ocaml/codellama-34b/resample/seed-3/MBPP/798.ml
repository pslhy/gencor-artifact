(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of a list. *)
let rec _sum (arr : int list) : int =
  if arr = []
  then 0
  else (List.hd arr) + sum (List.tl arr)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "sum" *)
(*     Hint: Did you mean "_sum"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec _sum (arr : int list) : int =
  if arr = []
  then 0
  else (List.hd arr) + _sum (List.tl arr)

