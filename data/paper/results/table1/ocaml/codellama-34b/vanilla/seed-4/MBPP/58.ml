let rec opposite_Signs (x : int) (y : int) : bool = 
    (* Check if the signs of two integers are opposite *)
    let (x' : int) = x * x in 
    (* Get the sign of the first integer *)
    let (y' : int) = y * y in 
    (* Get the sign of the second integer *)
    let (result : bool) = if x' * y' <= 0 then true else false in 
    (* Check if the signs are opposite *)
    result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given two integers have opposite sign or not. *)
