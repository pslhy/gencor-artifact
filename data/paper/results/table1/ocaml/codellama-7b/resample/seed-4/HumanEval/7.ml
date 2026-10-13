(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that contain given substring *)
(*     >>> filter_by_substring [] "a" *)
(*     [] *)
(*     >>> filter_by_substring ["abc"; "bacd"; "cde"; "array"] "a" *)
(*     ["abc"; "bacd"; "array"] *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | string :: rest ->
    let contains_substring = String.contains string substring in
    if contains_substring then
      string :: filter_by_substring rest substring
    else
      filter_by_substring rest substring

And here is the function written in a point-free style:

let filter_by_substring (strings : string list) (substring : string) =
  List.filter (fun string -> String.contains string substring) strings

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | string :: rest ->
    if String.contains string substring then string :: filter_by_substring rest substring
    else filter_by_substring rest substring

And here is the function written in a point-free style:

let filter_by_substring (strings : string list) (substring : string) =
  List.filter (fun string -> String.contains string substring) strings

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | string :: rest ->
    if String.contains substring string then
      string :: filter_by_substring rest substring
    else
      filter_by_substring rest substring

And here is the function written in a point-free style:

let filter_by_substring =
  List.filter (fun (string : string) -> String.contains substring string)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | string :: rest ->
    if String.contains substring string then
      string :: filter_by_substring rest substring
    else
      filter_by_substring rest substring

And here is the function written in a point-free style:

let filter_by_substring =
  List.filter (fun string -> String.contains substring string)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | string :: rest ->
    if String.contains substring string then
      string :: (filter_by_substring rest substring)
    else
      (filter_by_substring rest substring)

And here is the function written in a point-free style:

let filter_by_substring =
  List.filter (fun string -> String.contains substring string)

