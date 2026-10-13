let rec solution (lst : int list) : int = 
  let rec sum_odd_at_even pos lst acc = 
    match lst with
    | [] -> acc
    | x::xs when pos mod 2 = 1 && x mod 2 = 1 -> sum_odd_at_even (pos + 1) xs (acc + x)
    | _::xs -> sum_odd_at_even (pos + 1) xs acc
  in sum_odd_at_even 0 lst 0


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
