(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
let rec text_lowercase_underscore (text : string) : bool =
  if String.length text = 0 then
    true
  else if Char.is_lowercase text.[0] then
    text_lowercase_underscore (String.sub text 1 (String.length text - 1))
  else if text.[0] = '_' then
    text_lowercase_underscore (String.sub text 1 (String.length text - 1))
  else
    false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_lowercase_underscore (text : string) : bool =
  match text with
  | "" -> true
  | _ ->
      if text.[0] = '_' then
        text_lowercase_underscore (String.sub text 1 (String.length text - 1))
      else if Char.is_lowercase text.[0] then
        text_lowercase_underscore (String.sub text 1 (String.length text - 1))
      else
        false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:15: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_lowercase_underscore (text : string) : bool =
  match text with
  | "" -> true
  | _ ->
      if text.[0] = '_' then
        text_lowercase_underscore (String.sub text 1 (String.length text - 1))
      else if ((String.get text 0) >= 'a' && (String.get text 0) <= 'z') then
        text_lowercase_underscore (String.sub text 1 (String.length text - 1))
      else
        false

