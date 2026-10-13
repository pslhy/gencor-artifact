let rec group_tuples (input : string list list) : string list list = 
    match input with 
    | head :: tail -> 
    (match tail with 
    |[] -> head : *v*) 
        
        
        
    | hedl :: tatl -> list_recursion (head @ hedl)
And list_recursion (hedl : List.tl) =
  match hedl with
  | [] -> hedl
  | h :: t -> h :: t :: result) 
  
And result = group_tuples [ []; [ "a" ]; ["a", "b"] ]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
