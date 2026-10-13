let rec test_three_equal (x : int) (y : int) (z : int) : int =
match x, y, z with
  | x, x, x -> 3
  | _ -> test_three_equal y z x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of equal numbers from three given integers. *)
