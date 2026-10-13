let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int =
  (
  let (a1, a2, a3) = test_tup1 in
  let (b1, b2, b3) = test_tup2 in
  ((a1 - b1), (a2 - b2), (a3 - b3))
  )
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
