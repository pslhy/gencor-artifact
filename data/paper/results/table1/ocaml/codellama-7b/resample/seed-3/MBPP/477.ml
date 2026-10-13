(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
let rec is_lower (string : string) : string =
  if String.length string <= 1 then
    string
  else if Char.is_lower (String.get string 0) then
    is_lower (String.sub string 1 (String.length string - 1))
  else
    String.sub string 1 (String.length string - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lower" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string =
  if String.length string <= 1 then
    string
  else if 
    Char.is_lower (String.get string 0) then
    is_lower (String.sub string 1 (String.length string - 1))
  else
    String.sub string 1 (String.length string - 1)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Unbound value "Char.is_lower" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string =
  if String.length string = 0 then
    string
  else if Char.is_lower (String.get string 0) then
    is_lower(String.sub string 1 (String.length string - 1))
  else
    String.sub string 1 (String.length string - 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lower" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string =
  if String.length string = 0 then
    string
  else if 'a' <= string.[0] && string.[0] <= 'z' then
    is_lower(String.sub string 1 (String.length string - 1))
  else
    String.sub string 1 (String.length string - 1)

