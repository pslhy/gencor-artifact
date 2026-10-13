let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
  let rec modulo_helper = 
  (function
    | (h1, h2, []) -> []
    | (h1, h2, h3::t) -> h1 mod h2 :: modulo_helper(h1,h2,t)
  ) in 
  modulo_helper(test_tup1,test_tup2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
