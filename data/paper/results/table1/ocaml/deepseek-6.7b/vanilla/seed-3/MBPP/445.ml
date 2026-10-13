let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1, test_tup2 with
  | [], [] -> []
  | h1::t1, h2::t2 -> (List.map2 ( * ) h1 h2)::(index_multiplication t1 t2)
  | _ -> failwith "Both lists should have the same lengths"

(* Testing *)
let list1 = [[1; 2]; [3; 4]]
let list2 = [[5; 6]; [7; 8]]
let result = index_multiplication list1 list2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
