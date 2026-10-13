(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
let rec is_Sub_Array (a : int list) (b : int list) : bool =
  if a = [] then true
  else
    (if b = [] then false
    else is_Sub_Array a (List.tl b))
    || is_Sub_Array (List.tl a) (List.tl b)

