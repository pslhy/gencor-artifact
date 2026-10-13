let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | x::xs ->
    List.map2 (fun e1 e2 -> e1 * e2) x e2) xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
