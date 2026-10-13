let rec find_first_occurrence (a : int list) (x : int) : int = 
    (* base case: a has size <= 1 *)
    let rec find_first_occurrence_aux (a : int list) (x : int) (i : int) : int = 
        match a with 
        | [] -> -1
        | h::_ when h = x -> i
        | _::t -> find_first_occurrence_aux t x (i + 1) in
    find_first_occurrence_aux a x 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the index of the first occurrence of a given number in a sorted list. *)
