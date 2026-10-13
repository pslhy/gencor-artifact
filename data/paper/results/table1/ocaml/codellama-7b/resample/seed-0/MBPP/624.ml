(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string =
  if string = ""
  then ""
  else if Char.is_uppercase (String.get string 0)
  then String.get string 0
  else Char.uppercase (String.get string 0)

let convert_to_uppercase (string : string) : string =
  if string = ""
  then ""
  else is_upper (string.substring (1)) ^ Char.uppercase (string.[0])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if string = ""
  then ""
  else if string.[0] = Char.uppercase string.[0]
  then string.[0]
  else Char.uppercase string.[0]

let convert_to_uppercase (string : string) : string =
  if string = ""
  then ""
  else is_upper (string.substring (1)) ^ string.[0]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if string = ""
  then ""
  else if string.[0] = Char.uppercase string.[0]
  then string.[0]
  else string.[0]

let convert_to_uppercase (string : string) : string =
  if string = ""
  then ""
  else is_upper (string.substring (1)) ^ string.[0]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if string = ""
  then ""
  else if string.[0] = 'A'..'Z'
  then string.[0]
  else string.[0]

let convert_to_uppercase (string : string) : string =
  if string = ""
  then ""
  else is_upper (string.substring (1)) ^ string.[0]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:27: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  if string = ""
  then ""
  else if string.[0] = 'A' || string.[0] = 'B'
  then string.[0]
  else string.[0]

let convert_to_uppercase (string : string) : string =
  if string = ""
  then ""
  else is_upper (string.substring (1)) ^ string.[0]

