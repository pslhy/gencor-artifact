let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  let sum_list lst = List.fold_left (fun a b -> a + b) 0 lst in
  let rec max_el_in_lst lst = 
    match lst with
    |[] -> []
    |x::xs -> if sum_list x > sum_list (max_el_in_lst xs) then x else max_el_in_lst xs
  in
  let tuples_1 = List.map max_el_in_lst test_tup1 in
  let tuples_2 = List.map max_el_in_lst test_tup2 in
  if sum_list (max_el_in_lst tuples_1) > sum_list(max_el_in_lst tuples_2) 
  then test_tup1 else test_tup2 ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
