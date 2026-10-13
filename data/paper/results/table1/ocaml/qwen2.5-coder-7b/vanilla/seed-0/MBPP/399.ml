let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
  let f a b = a lxor b in
  let a1, a2, a3, a4 = test_tup1 in
  let b1, b2, b3, b4 = test_tup2 in
  (f a1 b1, f a2 b2, f a3 b3, f a4 b4)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
