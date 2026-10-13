(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
let rec frequency_lists (list1 : int list list) : (int * int) list = 
    let count acc x = 
        try 
            let assoc = List.assoc x acc in 
            List.replace_assoc x (assoc + 1) acc 
        with 
        | Not_found -> (x, 1) :: acc 
    in 
    List.fold_right (List.fold_left count) list1 []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:13: Unbound value "List.replace_assoc" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec frequency_lists (list1 : int list list) : (int * int) list = 
    let count acc x = 
        try 
            let assoc = List.assoc x acc in 
            (x, assoc + 1) :: List.remove_assoc x acc 
        with 
        | Not_found -> (x, 1) :: acc 
    in 
    List.fold_right (List.fold_left count) list1 []

