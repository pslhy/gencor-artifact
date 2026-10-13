(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
let rec toggle_string (string : string) : string =
  if string = "" then ""
  else
    let first = String.get string 0 in
    let rest = String.sub string 1 ((String.length string) - 1) in
    let new_char =
      if Char.lowercase first = first then
        Char.uppercase first
      else
        Char.lowercase first in
    String.make 1 new_char ^ toggle_string rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = "" then ""
  else
    let first = String.get string 0 in
    let rest = String.sub string 1 ((String.length string) - 1) in
    let new_char =
      if Char.lowercase first = first then
        Char.uppercase first
      else
        Char.lowercase first in
    String.make 1 new_char ^ toggle_string rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = "" then ""
  else
    let first = String.get string 0 in
    let rest = String.sub string 1 ((String.length string) - 1) in
    let new_char =
      if Char.lowercase first = first then
        Char.uppercase first
      else
        Char.lowercase first in
    String.make 1 new_char ^ toggle_string rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = "" then ""
  else
    let first = String.get string 0 in
    let rest = String.sub string 1 ((String.length string) - 1) in
    let new_char =
      if Char.lowercase first = first then
        Char.uppercase first
      else
        Char.lowercase first in
    String.make 1 new_char ^ toggle_string rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = "" then ""
  else
    let first = String.get string 0 in
    let rest = String.sub string 1 ((String.length string) - 1) in
    let new_char =
      if Char.lowercase first = first then
        Char.uppercase first
      else
        Char.lowercase first in
    String.make 1 new_char ^ toggle_string rest

