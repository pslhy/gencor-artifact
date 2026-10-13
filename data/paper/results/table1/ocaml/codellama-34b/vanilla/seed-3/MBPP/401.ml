let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  if test_tup1 = [] || test_tup2 = [] then
    []
  else
    let rec add_tuples (tuples1 : int list) (tuples2 : int list) : int list =
      match tuples1, tuples2 with
      | [], [] -> []
      | t1 :: ts1, t2 :: ts2 ->
          (t1 + t2) :: add_tuples ts1 ts2
      | [], t2 :: ts2 -> t2 :: add_tuples [] ts2
      | t1 :: ts1, [] -> t1 :: add_tuples ts1 []
    in
    add_tuples test_tup1 test_tup2 :: add_nested_tuples test_tup1 test_tup2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
