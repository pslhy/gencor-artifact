(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | h :: t ->
    let rest = capital_words_spaces t
    if is_uppercase h then " " ^ h ^ rest else h ^ rest

and is_uppercase (c : char) = c >= 'A' && c <= 'Z'

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | h :: t ->
    let rest = capital_words_spaces t
    if is_uppercase h then " " ^ h ^ rest else h ^ rest

and is_uppercase (c : char) = c >= 'A' && c <= 'Z'

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | h :: t ->
    let rest = capital_words_spaces t
    if is_uppercase h then " " ^ h ^ rest
    else h ^ rest

and is_uppercase (c : char) = c >= 'A' && c <= 'Z'

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | h :: t ->
    let rest = capital_words_spaces t
    if is_uppercase h
    then " " ^ h ^ rest
    else h ^ rest

and is_uppercase (c : char) = c >= 'A' && c <= 'Z'

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | h :: t ->
    let rest = capital_words_spaces t in
    if is_uppercase h
    then " " ^ h ^ rest
    else h ^ rest

and is_uppercase (c : char) = c >= 'A' && c <= 'Z'

