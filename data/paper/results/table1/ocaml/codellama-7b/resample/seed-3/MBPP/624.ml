(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string =
  if String.length string <= 1 then
    string
  else if Char.is_upper (String.get string 0) then
    is_upper (String.sub string 1 (String.length string - 1))
  else
    String.sub string 1 (String.length string - 1)

let to_upper (input : string) : string =
  is_upper input

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_upper" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if String.length string <= 1 then
    string
  else
    let first_char = String.get string 0 in
    if Char.is_upper first_char then
      is_upper (String.sub string 1 (String.length string - 1))
    else
      String.sub string 1 (String.length string - 1)

let to_upper (input : string) : string =
  is_upper input

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:8: Unbound value "Char.is_upper" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if String.length string <= 1 then
    string
  else
    let first_char = String.get string 0 in
    if Char.is_upper first_char then
      is_upper (String.sub string 1 (String.length string - 1))
    else
      String.sub string 1 (String.length string - 1)

let to_upper (input : string) : string =
  is_upper input

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:8: Unbound value "Char.is_upper" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if String.length string <= 1 then
    string
  else
    let first_char = String.get string 0 in
    if (Char.is_upper first_char) then
      is_upper (String.sub string 1 (String.length string - 1))
    else
      String.sub string 1 (String.length string - 1)

let to_upper (input : string) : string =
  is_upper input

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Unbound value "Char.is_upper" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if String.length string <= 1 then
    string
  else
    let first_char = String.get string 0 in
    if (first_char |> Char.uppercase_ascii) = Char.uppercase_ascii then
      is_upper (String.sub string 1 (String.length string - 1))
    else
      String.sub string 1 (String.length string - 1)

let to_upper (input : string) : string =
  is_upper input

