(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
let rec check_str (string : string) : bool = 
    Str.find_first_chars "aeiou" string (Str.regexp "a|e|i|o|u") in 
  if check_str string then true else false;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:5: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  if Str.string_match "a|e|i|o|u" string 0 then true else false;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  if Str.string_match "a|e|i|o|u" 0 then true else false;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  if !string_match "a|e|i|o|u" 0 then true else false;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:7: Unbound value "string_match" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  if string_match "a|e|i|o|u" 0 then true else false;;

