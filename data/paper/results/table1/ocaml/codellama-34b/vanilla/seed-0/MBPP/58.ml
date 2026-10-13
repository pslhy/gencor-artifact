let rec opposite_Signs (x : int) (y : int) : bool =
    if x = 0 then if y = 0 then false else opposite_Signs y 0
    else if y = 0 then opposite_Signs 0 x
    else if abs x = abs y then false
    else not (abs x <= abs y) <> not (abs x > abs y)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given two integers have opposite sign or not. *)
