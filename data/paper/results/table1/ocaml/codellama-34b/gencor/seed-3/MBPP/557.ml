
let rec toggle_string (string : string) : string =
  if string = ""
  then ""
  else
    match string.[0] with
    | 'A'..'Z' ->
      toggle_string (Char.chr (97 + (Char.code (String.get string 0) - 65)) :: string.[1..(String.length string - 1)])
    | 'a'..'z' ->
      toggle_string (Char.chr (65 + (Char.code (String.get string 0) - 97)) :: string.[1..(String.length string - 1)])
    | c -> c :: string

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
