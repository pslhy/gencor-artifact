let rec find_lucas (n : int) : int =
  let rec aux (i : int) (a : int) (b : int) : int =
    if i = n then a else aux (i + 1) (b) (a + b)
  in
  aux 2 2 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th lucas number. *)
