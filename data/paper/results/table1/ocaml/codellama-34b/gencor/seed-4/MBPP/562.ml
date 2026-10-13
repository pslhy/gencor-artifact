
let rec find_Max_Length (lst : int list list) : int = 
    match lst with 
    | head :: tail -> 
        (match tail with 
        |[] -> head :vartype
        
        
        )
    | [] -> 0

let list1 = [1;2;3;4;5] 
let list2 = [2;3;4;5] 
let list3 = [1;2;4;6] 
let list4 = [1;2;3] 

find_Max_Length [ list1; list2; list3; list3; list3; list3]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest sublists. *)
