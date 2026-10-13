let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  match test_list with
  | [] -> []
  | h::t -> List.rev (List.fold_left (fun acc el -> if el >= k then el::acc else acc) [] (List.rev h)) :: trim_tuple t k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
