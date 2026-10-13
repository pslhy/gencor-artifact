let rec multiple_to_single (l : int list) : int = 
    (* base case: if the list has only one element, return it *)
    match l with 
    | h :: [] -> h 
    (* recursive case: if the list has multiple elements, join them all together *)
    | h :: t -> multiple_to_single (List.concat [t; h])
    (* if the list is empty, return zero *)
    | [] -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to join a list of multiple integers into a single integer. *)
