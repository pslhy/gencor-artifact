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



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
