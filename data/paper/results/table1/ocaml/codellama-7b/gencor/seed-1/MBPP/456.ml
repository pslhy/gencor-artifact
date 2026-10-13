
let rec reverse_string_list (stringlist : string list) : string list =
match stringlist with
| [] -> []
| hd :: tl -> (String.concat "" (List.rev (String.to_seq hd))) :: reverse_string_list (tl)

let reverse_string_list (stringlist : string list) : string list =
List.fold_right (fun x acc ->
(String.concat "" (List.rev (String.to_seq x))) :: acc) stringlist []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
