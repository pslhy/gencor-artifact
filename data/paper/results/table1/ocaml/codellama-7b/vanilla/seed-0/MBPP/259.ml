let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> test_tup2
  | x :: xs' -> if x >= List.hd test_tup2 then maximize_elements (x :: xs') test_tup2
               else maximize_elements test_tup1 (List.tl test_tup2)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
