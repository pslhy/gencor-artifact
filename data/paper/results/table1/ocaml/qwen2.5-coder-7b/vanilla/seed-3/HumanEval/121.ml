let rec solution (lst : int list) : int = 
  let rec sum_odds lst idx acc = 
    match lst with
    | [] -> acc
    | h::t -> if idx mod 2 = 1 && h mod 2 = 1 then sum_odds t (idx + 1) (acc + h) else sum_odds t (idx + 1) acc
  in sum_odds lst 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions. *)
(*     Examples *)
(*     >>> solution [5; 8; 7; 1] *)
(*     12 *)
(*     >>> solution [3; 3; 3; 3; 3] *)
(*     9 *)
(*     >>> solution [30; 13; 24; 321] *)
(*     0 *)
