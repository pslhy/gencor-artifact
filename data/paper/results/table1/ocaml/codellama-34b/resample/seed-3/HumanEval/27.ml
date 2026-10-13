(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
let rec flip_case (string : string) : string =
  if string = "" then ""
  else
    (if Char.is_lowercase string.[0] then Char.uppercase string.[0]
      else Char.lowercase string.[0]) ^ flip_case string.[1..]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:62: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string =
  if string = "" then ""
  else
    (if Char.is_lowercase string.[0] then Char.uppercase string.[0]
      else Char.lowercase string.[0]) ^ flip_case string.[1..]

(* test.ml:5:62: Syntax error *)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:62: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string =
  if String.length string = 0 then ""
  else
    (if Char.is_lowercase string.[0] then Char.uppercase string.[0]
      else Char.lowercase string.[0]) ^ flip_case string.[1..]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:62: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string =
  if String.length string = 0 then ""
  else
    (if Char.is_lowercase string.[0] then Char.uppercase string.[0]
      else Char.lowercase string.[0]) ^
        flip_case string.[1..String.length string - 1]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string =
  if String.length string = 0 then ""
  else
    (if (Stdlib.Char.lowercase_unicode string.[0]) = (Stdlib.Char.uppercase_unicode string.[0])
      then Stdlib.Char.uppercase_ascii string.[0]
      else Stdlib.Char.lowercase_ascii string.[0]) ^
        flip_case string.[1..String.length string - 1]

