let rec two_unique_nums (nums : int list) : int list =
  match nums with
  | [] -> []
  | h :: t ->
    let rest = two_unique_nums t in
    if List.mem h rest then rest else h :: rest

let rec remove_duplicates (lists : int list list) : int list list =
  match lists with
  | [] -> []
  | h :: t ->
    let rest = remove_duplicates t in
    if List.mem h rest then rest else h :: rest

let remove_duplicates_lists (lists : int list list) : int list list =
  List.map lists ~f:remove_duplicates


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
