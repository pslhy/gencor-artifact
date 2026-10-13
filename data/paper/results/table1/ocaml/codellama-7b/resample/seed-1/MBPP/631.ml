(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
let rec replace_spaces (text : string) : string =
  let is_space = function ' ' -> true | _ -> false in
  match String.contains text ' ' with
  | true ->
    let under_scored = replace_spaces (String.trim text) in
    under_scored
      .replace_char (~pos:0, ~len:under_scored.length)
      ~by:(fun _ -> '_')
  | false ->
    let spaced = String.split_on_char ' ' text |> String.concat " " in
    spaced
      .replace_char (~pos:0, ~len:spaced.length)
      ~by:(fun _ -> ' ')

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Syntax error: "operator" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string =
  let is_space = function ' ' -> true | _ -> false in
  match String.contains text ' ' with
  | true ->
    let under_scored = replace_spaces (String.trim text) in
    under_scored
      .replace_char (~pos:0, ~len:under_scored.length)
      ~by:(fun _ -> '_')
  | false ->
    let spaced = String.split_on_char ' ' text |> String.concat " " in
    spaced
      .replace_char (~pos:0, ~len:spaced.length)
      ~by:(fun _ -> ' ')

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Syntax error: "operator" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string =
  let is_space = function ' ' -> true | _ -> false in
  match String.contains text ' ' with
  | true ->
    let under_scored = replace_spaces (String.trim text) in
    under_scored
      .replace_char (~pos:0, ~len:under_scored.length)
      ~by:(fun _ -> '_')
  | false ->
    let spaced = String.split_on_char ' ' text |> String.concat " " in
    spaced
      .replace_char (~pos:0, ~len:spaced.length)
      ~by:(fun _ -> ' ')

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Syntax error: "operator" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string =
  let is_space = function
    | ' ' -> true
    | _ -> false
  in
  match String.contains text ' ' with
  | true ->
    let under_scored = replace_spaces (String.trim text) in
    under_scored
      .replace_char (~pos:0, ~len:under_scored.length)
      ~by:(fun _ -> '_')
  | false ->
    let spaced = String.split_on_char ' ' text |> String.concat " " in
    spaced
      .replace_char (~pos:0, ~len:spaced.length)
      ~by:(fun _ -> ' ')

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:22: Syntax error: "operator" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string =
  let is_space = function
    | ' ' -> true
    | _ -> false
  in
  match String.length text with
  | 0 -> text
  | _ ->
    let under_scored = replace_spaces (String.sub text 1 (String.length text - 1)) in
    let prefix = if is_space (String.get text 0) then " " else "" in
    let suffix = if is_space (String.get text (String.length text - 1)) then " " else "" in
    prefix ^ under_scored ^ suffix

