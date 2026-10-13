(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n'th lucas number. *)
let rec find_lucas (n : int) : int =
    if n <= 0 then 2
    else if n = 1 then 1
    else find_lucas (n-1) + find_lucas (n-2)

