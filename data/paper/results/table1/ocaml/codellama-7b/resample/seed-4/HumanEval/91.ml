(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You'll be given a string of words, and your task is to count the number *)
(*     of boredoms. A boredom is a sentence that starts with the word "I". *)
(*     Sentences are delimited by '.', '?' or '!'. *)
(*     For example: *)
(*     >>> is_bored "Hello world" *)
(*     0 *)
(*     >>> is_bored "The sky is blue. The sun is shining. I love this weather" *)
(*     1 *)
let rec is_bored (s : string) : int =
  if s = "" then 0
  else
    let (word, rest) = Utils.take_while (fun c -> c <> '.' && c <> '?' && c <> '!') s in
    if word = "I" then 1 + is_bored rest
    else is_bored rest

and Utils.take_while (p : char -> bool) (s : string) : (string * string) =
  match String.split_on_char '\n' s with
  | line :: rest ->
    let (word, rest') = String.take_while p line in
    if rest' = "" then (word, "")
    else (word, rest' :: rest)
  | [] -> ("", "")

let () =
  let s = "The sky is blue. The sun is shining. I love this weather" in
  print_endline (string_of_int (is_bored s))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  if s = "" then 0
  else
    let (word, rest) = Utils.take_while (fun c -> c <> '.' ||c <> '?' ||c <> '!') s in
    if word = "I" then 1 + is_bored rest
    else is_bored rest

and Utils.take_while (p : char -> bool) (s : string) : (string * string) =
  match String.split_on_char '\n' s with
  | line :: rest ->
    let (word, rest') = String.take_while p line in
    if rest' = "" then (word, "")
    else (word, rest' :: rest)
  | [] -> ("", "")

let () =
  let s = "The sky is blue. The sun is shining. I love this weather" in
  print_endline (string_of_int (is_bored s))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  if s = "" then 0
  else
    let (word, rest) = Utils.take_while (fun c -> c <> '.' || c <> '?' || c <> '!') s in
    if word = "I" then 1 + is_bored rest
    else is_bored rest

and Utils.take_while (p : char -> bool) (s : string) : (string * string) =
  match String.split_on_char '\n' s with
  | line :: rest ->
    let (word, rest') = String.take_while p line in
    if rest' = "" then (word, "")
    else (word, rest' :: rest)
  | [] -> ("", "")

let () =
  let s = "The sky is blue. The sun is shining. I love this weather" in
  print_endline (string_of_int (is_bored s))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  if s = "" then 0
  else
    let (word, rest) = Utils.take_while (fun c -> c <> '.' || c <> '?' || c <> '!') s in
    if word = "I" then 1 + is_bored rest
    else is_bored rest

and Utils.take_while (p : char -> bool) (s : string) (x : string) (y : string) : (string * string) =
  match String.split_on_char '\n' s with
  | line :: rest ->
    let (word, rest') = String.take_while p line in
    if rest' = "" then (word, "")
    else (word, rest' :: rest)
  | [] -> ("", "")

let () =
  let s = "The sky is blue. The sun is shining. I love this weather" in
  print_endline (string_of_int (is_bored s))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  if s = "" then 0
  else
    let (word, rest) = Utils.take_while (fun c -> c <> '.' || c <> '?' || c <> '!') s in
    if word = "I" then 1 + is_bored rest
    else is_bored rest

and Utils.take_while (p : char -> bool) (s : string) =
  match String.split_on_char '\n' s with
  | line :: rest ->
    let (word, rest') = String.take_while p line in
    if rest' = "" then (word, "")
    else (word, rest' :: rest)
  | [] -> ("", "")

let () =
  let s = "The sky is blue. The sun is shining. I love this weather" in
  print_endline (string_of_int (is_bored s))

