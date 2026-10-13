(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
let rec check_str (string : string) : bool =
  if string = ""
  then false
  else if Char.is_vowel (String.get string 0)
  then true
  else check_str (String.sub string 1 (String.length string - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_vowel" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  if string = "" then false
  else if Char.is_vowel (String.get string 0) then true
  else check_str (String.sub string 1 (String.length string - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:11: Unbound value "Char.is_vowel" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  match string with
  | "" -> false
  | (ch :: rest) ->
    if Char.is_vowel ch then true
    else check_str rest

