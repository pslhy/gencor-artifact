let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    match test_tup1 with
    | first_list :: rest_lists ->
        let max_elem = List.fold_left (fun acc x -> if x > acc then x else acc) first_list first_list in
        let new_list = List.map (fun x -> if x = max_elem then 0 else x) first_list in
        maximize_elements rest_lists test_tup2
    | _ -> test_tup2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
