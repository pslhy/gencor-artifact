(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
let rec toggle_string (string : string) : string =
  if String.length string = 0 then
    string
  else if Char.is_lowercase string.[0] then
    String.make 1 (Char.uppercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))
  else if Char.is_uppercase string.[0] then
    String.make 1 (Char.lowercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))
  else
    string

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if String.length string = 0 then
    string
  else if Char.is_uppercase string.[0] then
    String.make 1 (Char.lowercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))
  else if Char.is_lowercase string.[0] then
    String.make 1 (Char.uppercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))
  else
    string

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if String.length string = 0 then
    string
  else if Char.is_lowercase string.[0] then
    String.make 1 (Char.uppercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))
  else
    String.make 1 (Char.lowercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = "" then
    string
  else if Char.is_lowercase string.[0] then
    String.make 1 (Char.uppercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))
  else
    String.make 1 (Char.lowercase string.[0]) ^ (toggle_string (String.sub string 1 (String.length string - 1)))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = "" then
    string
  else if Char.is_lowercase string.[0] then
    String.make 1 (Char.uppercase string.[0]) ^ toggle_string (String.sub string 1 (String.length string - 1))
  else
    String.make 1 (Char.lowercase string.[0]) ^ toggle_string (String.sub string 1 (String.length string - 1))

