(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
let rec count_reverse_pairs (test_list : string list) : int = 
    let rec helper (lst : string list) (seen : string list) (count : int) : int =
        match lst with
        | [] -> count
        | x::xs -> 
            if List.mem (String.rev x) seen then
                helper xs (x::seen) (count + 1)
            else
                helper xs (x::seen) count
    in
    helper test_list [] 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int = 
    let rec helper (lst : string list) (seen : string list) (count : int) : int =
        match lst with
        | [] -> count
        | x::xs -> 
            if List.mem (List.rev x) seen then
                helper xs (x::seen) (count + 1)
            else
                helper xs (x::seen) count
    in
    helper test_list [] 0

