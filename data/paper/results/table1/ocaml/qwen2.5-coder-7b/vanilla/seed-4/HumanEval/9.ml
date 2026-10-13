let rec rolling_max (numbers : int list) : int list = 
  let rec helper acc max nums = 
    match nums with
    | [] -> List.rev acc
    | h::t -> 
      let new_max = max h max in
      helper (new_max :: acc) new_max t
  in
  helper [] Int.min_int numbers


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
