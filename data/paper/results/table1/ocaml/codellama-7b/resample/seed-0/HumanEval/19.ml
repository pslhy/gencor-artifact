(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
let rec sort_numbers (numbers : string) : string =
  match numbers with
  | "" -> ""
  | _ ->
    let nums = Str.split (Str.regexp_string " ") numbers
      |> List.map int_of_string
      |> List.sort compare
      |> List.map string_of_int
      |> String.concat " "
    in
    " " ^ nums

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
  match numbers with
  | "" -> ""
  | _ ->
    let nums = Str.split (Str.regexp_string " ") numbers
      |> List.map int_of_string
      |> List.sort compare
      |> List.map string_of_int
      |> String.concat " "
    in
    " " ^ nums

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
  match numbers with
  | "" -> ""
  | _ ->
    let nums = List.map int_of_string (Str.split (Str.regexp_string " ") numbers)
      |> List.sort compare
      |> List.map string_of_int
      |> String.concat " "
    in
    " " ^ nums

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:40: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
  match numbers with
  | "" -> ""
  | _ ->
    let nums = List.map int_of_string (String.split_on_char ' ' numbers)
      |> List.sort compare
      |> List.map string_of_int
      |> String.concat " "
    in
    " " ^ nums

