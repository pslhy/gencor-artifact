(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
let rec reverse_string_list (stringlist : string list) : string list = 
  match stringlist with
  | [] -> []
  | head::tail -> (String.rev head) :: (reverse_string_list tail)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_string_list (stringlist : string list) : string list = 
  match stringlist with
  | [] -> []
  | head::tail -> (List.rev (List.rev head)) :: (reverse_string_list tail)

