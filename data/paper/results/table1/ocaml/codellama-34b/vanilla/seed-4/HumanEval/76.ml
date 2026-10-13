let rec is_simple_power (x : int) (n : int) : bool =
    if x <= 0 then
        false
    else if n = 1 then
        true
    else if x = n then
        true
    else if x < n then
        false
    else
        is_simple_power (x/n) n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Your task is to write a function that returns true if a number x is a simple *)
(*     power of n and false in other cases. *)
(*     x is a simple power of n if n**int=x *)
(*     For example: *)
(*     >>> is_simple_power 1 4 *)
(*     true *)
(*     >>> is_simple_power 2 2 *)
(*     true *)
(*     >>> is_simple_power 8 2 *)
(*     true *)
(*     >>> is_simple_power 3 2 *)
(*     false *)
(*     >>> is_simple_power 3 1 *)
(*     false *)
(*     >>> is_simple_power 5 3 *)
(*     false *)
