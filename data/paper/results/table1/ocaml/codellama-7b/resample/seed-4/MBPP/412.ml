(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove odd numbers from a given list. *)
let rec remove_odd (l : int list) : int list = 
    match l with 
    | head :: tail -> 
            (match head % 2 = 0 with 
                | true -> head :: tail 
                | false -> remove_odd tail) 
    | [] -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:25: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_odd (l : int list) : int list = 
    match l with
    | head :: tail ->
            if head % 2 = 0 
            then head :: tail
            else remove_odd tail
    | [] -> []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_odd (l : int list) : int list = 
    match l with
    | head :: tail ->
            if head mod 2 = 0 
            then head :: tail
            else remove_odd tail
    | [] -> []

