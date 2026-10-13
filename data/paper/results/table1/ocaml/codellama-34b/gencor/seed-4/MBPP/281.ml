
let rec all_unique (test_list : int list) : bool = 
    (* base case: empty list with all unique elements *)
    let rec base_case =
        match test_list with
        | [] -> true
        | _ :: [] -> true
        | _ -> false
        in
    (* rec case: check if the head element occurs in the tail recursion *)
    let rec rec_case =
        match test_list with
        | [] -> true
        | head :: tail -> not (List.mem head tail) && rec_case tail
        in
    if base_case then
        rec_case
    else
        false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
