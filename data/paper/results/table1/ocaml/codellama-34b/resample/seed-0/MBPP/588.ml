(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | [x] -> 0
    | _ ->
        let largest = List.fold_left ( max ) Int.min_int nums in
        let smallest = List.fold_left ( min ) Int.max_int nums in
        if largest < smallest then
            largest - smallest
        else
            smallest - largest
        
let result = big_diff [1;2;3;4;5;6]

