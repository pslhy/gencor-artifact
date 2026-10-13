let rec move_zero (num_list : int list) : int list = 
    match num_list with
    | [] -> []
    | h :: t when h = 0 -> move_zero t
    | h :: t -> h :: move_zero t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
