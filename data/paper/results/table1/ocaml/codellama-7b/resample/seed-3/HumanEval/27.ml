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
  if String.length string = 0 then
    string
  else if Char.is_lowercase string.[0] then
    String.make 1 (Char.uppercase string.[0]) ^ flip_case (String.sub string 1 (String.length string - 1))
  else if Char.is_uppercase string.[0] then
    String.make 1 (Char.lowercase string.[0]) ^ flip_case (String.sub string 1 (String.length string - 1))
  else
    string

let () =
  print_endline (flip_case "Hello")

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string =
  if String.length string = 0 then
    string
  else if 'a' <= String.get string 0 && String.get string 0 <= 'z' then
    String.make 1 (Char.uppercase (String.get string 0)) ^ flip_case (String.sub string 1 (String.length string - 1))
  else if 'A' <= String.get string 0 && String.get string 0 <= 'Z' then
    String.make 1 (Char.lowercase (String.get string 0)) ^ flip_case (String.sub string 1 (String.length string - 1))
  else
    string

let () =
  print_endline (flip_case "Hello")

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:20: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string =
  if String.length string = 0 then
    string
  else if 'a' <= String.get string 0 && String.get string 0 <= 'z' then
    Char.chr (Char.code (String.get string 0) + (Char.code 'A' - Char.code 'a')) :: flip_case (String.sub string 1 (String.length string - 1))
  else if 'A' <= String.get string 0 && String.get string 0 <= 'Z' then
    Char.chr (Char.code (String.get string 0) + (Char.code 'a' - Char.code 'A')) :: flip_case (String.sub string 1 (String.length string - 1))
  else
    string

let () =
  print_endline (flip_case "Hello")

