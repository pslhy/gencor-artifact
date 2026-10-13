let rec test_three_equal (x : int) (y : int) (z : int) : int =
  if x = y && y = z then 3
  else if x = y || y = z || z = x then 2
  else 0

(* Test cases *)
print_int(test_three_equal 1 1 1);;
print_int(test_three_equal 1 2 3);;
print_int(test_three_equal 1 1 2);;
print_int(test_three_equal 1 2 2);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of equal numbers from three given integers. *)
