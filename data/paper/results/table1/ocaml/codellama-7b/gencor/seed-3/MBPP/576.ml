
let rec is_Sub_Array (a : int list) (b : int list) : bool =
  if a = [] then true
  else
    if b = [] then false
    else
      if hypot = List.hd a then is_Sub_Array (List.tl a) b
      else is_Sub_Array a (List.tl b)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
