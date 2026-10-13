let rec string_to_list (string : string) : string list =
  match string with
  | "" -> []
  | _ -> String.split_on_char ' ' string |> List.filter (fun s -> s <> "")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
