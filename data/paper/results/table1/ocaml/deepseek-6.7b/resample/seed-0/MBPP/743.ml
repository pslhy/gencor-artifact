(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
let rec rotate_right (list : int list) (m : int) : int list =
    match m, list with
    | 0, _ -> list
    | _, [] -> []
    | m, _ -> 
        let reversed = List.rev list in
        let first_n_last = List.rev (List.tl (List.rev_tail reversed)) in
        let rest = List.rev (List.tl reversed) in
        List.append first_n_last rest 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:47: Unbound value "List.rev_tail" *)
(*     Hint: Did you mean "rev_map" or "rev_map2"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
    match m, list with
    | 0, _ -> list
    | _, [] -> []
    | m, _ -> 
        let reversed = List.rev list in
        let first_n_last = List.rev (List.tl (List.rev_map reversed)) in
        let rest = List.rev (List.tl reversed) in
        List.append first_n_last rest 

