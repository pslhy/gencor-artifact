let rec solution (lst : int list) : int =
    match lst with
    | [] -> 0
    | h :: t ->
        if h mod 2 = 0 then h else 0
    | _ :: t -> solution t


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
