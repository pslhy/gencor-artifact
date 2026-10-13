let rec _sum (arr : int list) : int = 
    match arr with 
    | head :: tail -> 
    head + (tail)
    |[] -> head : 
         exit
        
        

let get_sum (arr : int list) : int = 
_sum(arr);;




(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of a list. *)
