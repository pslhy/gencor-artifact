let rec reverse_string_list (stringlist : string list) : string list =
  match stringlist with
  | [] -> []
  | h :: t -> reverse_string h :: reverse_string_list t

and reverse_string (s : string) : string =
  String.init (String.length s) (fun i -> s.[String.length s - i - 1])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
