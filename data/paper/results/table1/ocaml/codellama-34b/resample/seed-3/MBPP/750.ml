(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to add the given tuple to the given list. *)
let rec add_tuple (test_list : int list) (test_tup :  int * int) : int list =
  let (x, y) = test_tup in
  match test_list with
  | [] -> [(x + y)]
  | (h :: t) -> h :: add_tuple t (x+y, y)

