(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
  if word = "" then ""
  else
    let (h, t) = (String.get word 0, String.sub word 1 (String.length word - 1)) in
    if h = '_' then snake_to_camel t
    else String.make 1 (Char.lowerCase h) ^ snake_to_camel t

let snake_to_camel (str : string) : string =
  String.concat "" (List.map snake_to_camel (String.split_on_char '_' str))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound value "Char.lowerCase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
  if word = "" then ""
  else
    let (h, t) = (String.get word 0, String.sub word 1 (String.length word - 1)) in
    if h = '_' then snake_to_camel t
    else String.make 1 (String.lowercase h) ^ snake_to_camel t

let snake_to_camel (str : string) : string =
  String.concat "" (List.map snake_to_camel (String.split_on_char '_' str))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
  if word = "" then ""
  else
    let (h, t) = (String.get word 0, String.sub word 1 (String.length word - 1)) in
    if h = '_' then snake_to_camel t
    else String.make 1 (Char.lowercase h) ^ snake_to_camel t

let snake_to_camel (str : string) : string =
  String.concat "" (List.map snake_to_camel (String.split_on_char '_' str))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
  if word = "" then ""
  else
    let (h, t) = (String.get word 0, String.sub word 1 (String.length word - 1)) in
    if h = '_' then snake_to_camel t
    else String.make 1 (Char.lowercase_ascii h) ^ snake_to_camel t

let snake_to_camel (str : string) : string =
  String.concat "" (List.map snake_to_camel (String.split_on_char '_' str))

