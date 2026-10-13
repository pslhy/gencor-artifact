let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
  let div x y = if y = 0 then 0 else x / y in
  (div (fst test_tup1) (fst test_tup2),
   div (snd test_tup1) (snd test_tup2),
   div (List.nth (Array.to_list (Array.of_list [test_tup1; test_tup2])) 0) (List.nth (Array.to_list (Array.of_list [test_tup1; test_tup2])) 1),
   div (List.nth (Array.to_list (Array.of_list [test_tup1; test_tup2])) 2) (List.nth (Array.to_list (Array.of_list [test_tup1; test_tup2])) 3))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
