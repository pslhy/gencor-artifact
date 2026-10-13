let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | h :: t -> List.map (fun x -> List.map2 ( * ) h x) test_tup2

let _ =
  let list_test_tup1 = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] in
  let list_test_tup2 = [[9; 8; 7]; [6; 5; 4]; [3; 2; 1]] in
  print_int_list_list (index_multiplication list_test_tup1 list_test_tup2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
