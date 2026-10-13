(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
let rec remove_all_spaces (text : string) : string =
  if String.length text = 0 then
    ""
  else if Char.is_space text.[0] then
    remove_all_spaces (String.sub text 1 ((String.length text) - 1))
  else
    text.[0] ^ remove_all_spaces (String.sub text 1 ((String.length text) - 1))

let () =
  let s = "   Hello World  " in
  print_endline (remove_all_spaces s)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_space" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string =
  if String.length text = 0 then
    ""
  else if Char.is_whitespace text.[0] then
    remove_all_spaces (String.sub text 1 ((String.length text) - 1))
  else
    text.[0] ^ remove_all_spaces (String.sub text 1 ((String.length text) - 1))

let () =
  let s = "   Hello World  " in
  print_endline (remove_all_spaces s)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string =
  if String.length text = 0 then
    ""
  else if Str.is_whitespace text.[0] then
    remove_all_spaces (String.sub text 1 ((String.length text) - 1))
  else
    text.[0] ^ remove_all_spaces (String.sub text 1 ((String.length text) - 1))

let () =
  let s = "   Hello World  " in
  print_endline (remove_all_spaces s)
(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string =
  if String.length text = 0 then
    ""
  else if String.is_whitespace text.[0] then
    remove_all_spaces (String.sub text 1 ((String.length text) - 1))
  else
    text.[0] ^ remove_all_spaces (String.sub text 1 ((String.length text) - 1))

let () =
  let s = "   Hello World  " in
  print_endline (remove_all_spaces s)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "String.is_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string =
  if String.length text = 0 then
    ""
  else if String.contains text.[0] ' ' then
    remove_all_spaces (String.sub text 1 ((String.length text) - 1))
  else
    text.[0] ^ remove_all_spaces (String.sub text 1 ((String.length text) - 1))

let () =
  let s = "   Hello World  " in
  print_endline (remove_all_spaces s)

