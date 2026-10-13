let rec check_Consecutive (l : int list) : bool =
match l with
| [] -> false
| h :: t ->
  if List.exists (fun x -> x = h + 1) t then
    check_Consecutive t
  else
    false
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)
