let rec two_unique_nums (nums : int list) : int list =
  match nums with
  | [] -> []
  | h::t -> if List.mem h t then two_unique_nums t else h::two_unique_nums t;;

let rec remove_duplicates (nums : int list list) : int list list =
  match nums with
  | [] -> []
  | h::t -> (two_unique_nums h)::(remove_duplicates t);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
