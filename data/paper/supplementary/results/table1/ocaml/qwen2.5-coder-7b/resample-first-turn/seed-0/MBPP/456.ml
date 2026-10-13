let rec reverse_string_list (stringlist : string list) : string list = 
  match stringlist with
  | [] -> []
  | head::tail -> (String.rev head) :: (reverse_string_list tail)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
