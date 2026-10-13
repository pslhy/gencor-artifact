(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string s and a natural number n, you have been tasked to implement *)
(*     a function that returns a list of all words from string s that contain exactly *)
(*     n consonants, in order these words appear in the string s. *)
(*     If the string s is empty then the function should return an empty list. *)
(*     Note: you may assume the input string contains only letters and spaces. *)
(*     Examples: *)
(*     >>> select_words "Mary had a little lamb" 4 *)
(*     ["little"] *)
(*     >>> select_words "Mary had a little lamb" 3 *)
(*     ["Mary"; "lamb"] *)
(*     >>> select_words "simple white space" 2 *)
(*     [] *)
(*     >>> select_words "Hello world" 4 *)
(*     ["world"] *)
(*     >>> select_words "Uncle sam" 3 *)
(*     ["Uncle"] *)
let rec select_words (s : string) (n : int) : string list =
  if n < 1 then
    []
  else if String.length s = 0 then
    []
  else
    let word = String.substr_left s ~ofs:1 ~len:((String.pos_char s ' ' - 1) - 1) in
    let subs = String.substrings s ~start:((String.pos_char s ' ' - 1) + 1) in
    match String.chars word |> List.filter (fun c -> not (c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u')) with
    | [] -> select_words subs n
    | _ when List.length (String.chars word) = n -> word :: select_words subs n
    | _ -> select_words subs n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:16: Unbound value "String.substr_left" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  if n < 1 then
    []
  else if String.length s = 0 then
    []
  else
    let word = String.subs s ~len:(String.pos_char s ' ' - 1)
    and subs = String.subs s ~start:(String.pos_char s ' ' + 1) in
    match String.contains word } in
     select_words subs n
    with _ -> []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  if n < 1 then [] else
    let word = String.subs s ~len:(String.pos_char s ' ' - 1)
    and subs = String.subs s ~start:(String.pos_char s ' ' + 1) in
    match String.contains word ['a'; 'e'; 'i'; 'o'; 'u'; 'y'; 'h']}
      select_words subs n
  with _ -> []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:67: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  if n < 1 then [] else
    let word = String.sub s 0 (String.pos s ' ' - 1)
    and subs = String.sub s (String.pos s ' ' + 1) (String.length s) in
    if String.contains word ['a'; 'e'; 'i'; 'o'; 'u'; 'y'; 'h'] then
      [word] @ select_words subs (n - 1)
    else
      select_words subs (n - 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Unbound value "String.pos" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  if n < 1 then [] else
    let word = String.sub s 0 (String.index s ' ' - 1)
    and subs = String.sub s (String.index s ' ' + 1) (String.length s) in
    if String.contains word ['a'; 'e'; 'i'; 'o'; 'u'; 'y'; 'h'] then
      [word] @ select_words subs (n - 1)
    else
      select_words subs (n - 1)

