let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
  let (x1, y1, z1, w1) = test_tup1 in
  let (x2, y2, z2, w2) = test_tup2 in
  (x1 lxor x2, y1 lxor y2, z1 lxor z2, w1 lxor w2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
