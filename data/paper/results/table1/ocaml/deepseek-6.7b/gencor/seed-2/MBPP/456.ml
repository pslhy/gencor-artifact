
let rec reverse_string_list (stringlist : string list) : string list =
  match stringlist with
  | [] -> []
  | h::t -> (String.sub h 0 1) :: reverse_string_list (String.sub h 1 (String.length h - 1)) @ reverse_string_list t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
