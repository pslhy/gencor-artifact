let rec check_distinct (test_tup : int list) : bool =
  match test_tup with
  | [] -> true
  | hd :: tl -> not (List.mem hd tl) && check_distinct tl
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
