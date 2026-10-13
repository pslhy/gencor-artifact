(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    match test_tup1, test_tup2 with
    | [], [] -> []
    | x :: xs, y :: ys -> 
        if Utils.compare_list(x, y) > 0 then
             maximize_elements xs ys test_tup1 test_tup2
        else
             maximize_elements xs ys test_tup2 test_tup1
    | x :: xs, [] ->
       if Utils.compare_list(x, test_tup2) > 0 then
         maximize_elements xs test_tup1 test_tup2
       else
         maximize_elements xs test_tup2 test_tup1
    | [], y :: ys ->
        if Utils.compare_list(test_tup1, y) > 0 then
             maximize_elements test_tup2 ys test_tup1
        else
             maximize_elements test_tup2 ys test_tup2


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    match test_tup1, test_tup2 with
    | [], [] -> []
    | x :: xs, y :: ys -> 
        if List.compare_list(x, y) > 0 then
             maximize_elements xs ys test_tup1 test_tup2
        else
             maximize_elements xs ys test_tup2 test_tup1
    | x :: xs, [] ->
       if List.compare_list(x, test_tup2) > 0 then
         maximize_elements xs test_tup1 test_tup2
       else
         maximize_elements xs test_tup2 test_tup1
    | [], y :: ys ->
        if List.compare_list(test_tup1, y) > 0 then
             maximize_elements test_tup2 ys test_tup1
        else
             maximize_elements test_tup2 ys test_tup2


(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound value "List.compare_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    match test_tup1, test_tup2 with
    | [], [] -> []
    | x :: xs, y :: ys -> 
        if (x >= y) then
            maximize_elements xs ys test_tup1 test_tup2
        else
            maximize_elements xs ys test_tup2 test_tup1
    | x :: xs, [] -> 
        if (x > List.fold_left max 0 test_tup2) then
            maximize_elements xs test_tup1 test_tup2
        else
            maximize_elements xs test_tup2 test_tup1
    | [], y :: ys -> 
        if (List.fold_left max 0 test_tup1 >= y) then
            maximize_elements test_tup2 ys test_tup1
        else
            maximize_elements test_tup2 ys test_tup2


