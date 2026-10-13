
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
  List.map2 (List.map Sys.max_floatarray_length
    test_tup1
  ; fun x y -> List.map2 max x y)
  ; test_tup2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
