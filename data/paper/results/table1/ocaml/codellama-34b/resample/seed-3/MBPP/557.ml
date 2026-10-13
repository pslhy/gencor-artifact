(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
let rec toggle_string (string : string) : string =
  if string = ""
  then ""
  else
    match string.[0] with
    | 'A'..'Z' ->
      toggle_string (Char.chr (97 + (Char.code (String.get string 0) - 65)) :: string.[1..])
    | 'a'..'z' ->
      toggle_string (Char.chr (65 + (Char.code (String.get string 0) - 97)) :: string.[1..])
    | _ ->
      toggle_string (string.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:91: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = ""
  then ""
  else
    match string.[0] with
    | 'A'..'Z' -> toggle_string (Char.chr (97 + (Char.code (String.get string 0) - 65)) :: string.[1..])
    | 'a'..'z' -> toggle_string (Char.chr (65 + (Char.code (String.get string 0) - 97)) :: string.[1..])
    | _ -> toggle_string (string.[1..])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:103: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = ""
  then ""
  else
    match string.[0] with
    | 'A'..'Z' -> toggle_string (Char.chr (97 + (Char.code (String.get string 0) - 65)) :: string.[1..])
    | 'a'..'z' -> toggle_string (Char.chr (65 + (Char.code (String.get string 0) - 97)) :: string.[1..])
    | _ -> toggle_string (string.[1..])
}

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:103: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = ""
  then ""
  else
    match string.[0] with
    | 'A'..'Z' -> toggle_string (Char.chr (97 + (Char.code (String.get string 0) - 65)) :: string.[1..])
    | 'a'..'z' -> toggle_string (Char.chr (65 + (Char.code (String.get string 0) - 97)) :: string.[1..])
    | _ -> toggle_string (string.[1..])

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:103: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string =
  if string = ""
  then ""
  else
    match string.[0] with
    | 'A'..'Z' -> toggle_string (Char.chr (97 + (Char.code (String.get string 0) - 65)) :: string.[1..])
    | 'a'..'z' -> toggle_string (Char.chr (65 + (Char.code (String.get string 0) - 97)) :: string.[1..])
    | _ -> toggle_string (string.[1..])

