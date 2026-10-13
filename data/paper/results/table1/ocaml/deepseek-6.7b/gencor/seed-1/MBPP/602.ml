
let rec first_repeated_char (str1 : string) : string option =
  match str1 with
  | "" -> None
  | s ->
     let letter_option = List.find_opt (fun c ->
         let count = String.length (String.sub str1 0 (String.index str1 c)) in
         count > 1
       ) (String.split_on_char s.[0] str1)
     in
     match letter_option with
     | Some(ch) -> Some(ch)
     | None -> first_repeated_char (String.sub str1 1 (String.length str1 - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
