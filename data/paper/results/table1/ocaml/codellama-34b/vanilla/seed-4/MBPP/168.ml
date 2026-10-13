let rec frequency (a : int list) (x : int) : int = 
    match a with 
    | head :: tail -> if (head == x) then 1 + frequency tail x else frequency tail x
    | [] -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurrences of a number in a given list. *)
