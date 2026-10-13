let rec split (list : int list) : int list = 
    match list with 
    | head :: tail -> 
        (match head % 2 = 0 with 
        | true -> split tail
        | false -> head :: split tail
        )
    | [] -> []

let rec filter (list : int list) : int list = 
    match list with 
    | head :: tail -> (match head % 2 = 0 with 
        | true -> filter tail
        | false -> [head] @ filter tail
        )
    | [] -> []

let rec list_filter (list : int list) : int list = 
    match list with 
    | head :: tail -> (match head % 2 = 0 with 
        | true -> list_filter tail
        | false -> [list_filter tail] @ list 
        )
    | [] -> []

list_filter [1; 2; 3; 4; 5; 6; 7; 8; 9]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and only returns the odd ones. *)
