let rec all_unique (test_list : int list) : bool =
  match test_list with
  | [] -> true
  | h :: t -> not (List.mem h t) && (all_unique t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
