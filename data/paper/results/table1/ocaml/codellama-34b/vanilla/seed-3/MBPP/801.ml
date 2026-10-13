let rec test_three_equal (x : int) (y : int) (z : int) : int =
  if x = y && y = z then
    1
  else if x != y then
    test_three_equal x z
  else
    test_three_equal y z


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of equal numbers from three given integers. *)
