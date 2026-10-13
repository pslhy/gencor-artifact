let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  List.map (fun lst -> List.take (List.length lst - k) lst) test_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
