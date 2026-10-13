let rec odd_position (nums : int list) : bool = 
  let rec helper nums idx = 
    match nums with
    | [] | [_] -> true
    | h1::h2::t -> 
      if idx mod 2 = 1 && h2 mod 2 = 0 then false
      else helper t (idx + 1)
  in helper nums 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
