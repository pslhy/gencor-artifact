let rec odd_position (nums : int list) : bool = 
  let rec helper lst index = 
    match lst with
    | [] -> true
    | h::t -> 
      if index mod 2 <> 0 then
        if h mod 2 = 0 then false else helper t (index + 1)
      else helper t (index + 1)
  in helper nums 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
