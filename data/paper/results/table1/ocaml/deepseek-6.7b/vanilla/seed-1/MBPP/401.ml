let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1, test_tup2 with
  | [], [] -> []
  | h1::t1, h2::t2 -> (List.map2 (fun x y -> x + y) h1 h2) :: add_nested_tuples t1 t2
  | _, _ -> failwith "Lists are of different lengths."


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
