
let rec toggle_string (string : string) : string =
  if String.length string = 0 then
    string
  else if Char.lowercase_ascii (String.get string 0) then
    String.make 1 (Char.uppercase_ascii (String.get string 0)) ^ toggle_string (String.sub string 1 (String.length string - 1))
  else
    String.make 1 (Char.lowercase_ascii (String.get string 0)) ^ toggle_string (String.sub string 1 (String.length string - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
