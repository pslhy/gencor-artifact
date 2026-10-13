(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | head::tail -> if contains head tail then false
                                           else all_unique tail

let contains (element : int) (test_list : int list) : bool =
    match test_list with
    | [] -> false
    | head::tail -> element = head || contains element tail

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "contains" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | head::tail -> if contains head tail then false
                                           else all_unique tail

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "contains" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | head::tail -> if List.contains head tail then false
                                           else all_unique tail

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "List.contains" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | head::tail -> if List.mem head tail then false
                                           else all_unique tail

