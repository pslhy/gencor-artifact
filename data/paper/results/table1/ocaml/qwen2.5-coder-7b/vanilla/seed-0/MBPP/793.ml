let rec last (arr : int list) (x : int) : int = 
  let rec helper lst pos =
    match lst with
    | [] -> -1
    | h::t -> if h = x then helper t (pos + 1) else helper t pos
  in helper arr 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
