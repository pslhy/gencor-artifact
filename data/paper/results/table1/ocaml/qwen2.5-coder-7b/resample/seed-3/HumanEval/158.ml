(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
let rec find_max (words : string list) : string = 
  let rec max_word (current_max : string) (remaining : string list) : string =
    match remaining with
    | [] -> current_max
    | word :: rest ->
      let unique_chars = Set.of_list (List.map (fun c -> c) (List.of_string word)) in
      let current_count = Set.length unique_chars in
      let max_count = Set.length (Set.of_list (List.map (fun c -> c) (List.of_string current_max))) in
      if current_count > max_count || (current_count = max_count && word <= current_max) then
        max_word word rest
      else
        max_word current_max rest
  in
  match words with
  | [] -> ""
  | word :: rest -> max_word word rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "Set.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word (current_max : string) (remaining : string list) : string =
    match remaining with
    | [] -> current_max
    | word :: rest ->
      let unique_chars = List.compare_lengths (List.dedup word) (List.dedup current_max) in
      if unique_chars > 0 || (unique_chars = 0 && word <= current_max) then
        max_word word rest
      else
        max_word current_max rest
  and List.dedup (lst : 'a list) : 'a list =
    let rec helper seen acc = function
      | [] -> List.rev acc
      | x :: xs ->
        if List.mem x seen then helper seen acc xs
        else helper (x :: seen) (x :: acc) xs
    in helper [] [] lst
  in
  match words with
  | [] -> ""
  | word :: rest -> max_word word rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word (current_max : string) (remaining : string list) : string =
    match remaining with
    | [] -> current_max
    | word :: rest ->
      let unique_chars_word = List.dedup (List.to_seq (String.to_seq word)) |> Seq.length in
      let unique_chars_current_max = List.dedup (List.to_seq (String.to_seq current_max)) |> Seq.length in
      if unique_chars_word > unique_chars_current_max || (unique_chars_word = unique_chars_current_max && String.compare word current_max <= 0) then
        max_word word rest
      else
        max_word current_max rest
  and List.dedup (lst : 'a list) : 'a list =
    let rec helper seen acc = function
      | [] -> List.rev acc
      | x :: xs ->
        if List.mem x seen then helper seen acc xs
        else helper (x :: seen) (x :: acc) xs
    in helper [] [] lst
  in
  match words with
  | [] -> ""
  | word :: rest -> max_word word rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word (current_max : string) (remaining : string list) : string =
    match remaining with
    | [] -> current_max
    | word :: rest ->
      let unique_chars_word = List.dedup (List.to_seq (String.to_seq word)) |> Seq.length in
      let unique_chars_current_max = List.dedup (List.to_seq (String.to_seq current_max)) |> Seq.length in
      if unique_chars_word > unique_chars_current_max || (unique_chars_word = unique_chars_current_max && String.compare word current_max <= 0) then
        max_word word rest
      else
        max_word current_max rest
  and List.dedup (lst : 'a list) : 'a list =
    let rec helper seen acc = function
      | [] -> List.rev acc
      | x :: xs ->
        if List.mem x seen then helper seen acc xs
        else helper (x :: seen) (x :: acc) xs
    in helper [] [] lst
  in
  match words with
  | [] -> ""
  | word :: rest -> max_word word rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word (current_max : string) (remaining : string list) : string =
    match remaining with
    | [] -> current_max
    | word :: rest ->
      let unique_chars_word = List.length (List.uniq (String.to_list word)) in
      let unique_chars_current_max = List.length (List.uniq (String.to_list current_max)) in
      if unique_chars_word > unique_chars_current_max || (unique_chars_word = unique_chars_current_max && String.compare word current_max <= 0) then
        max_word word rest
      else
        max_word current_max rest
  and List.uniq (lst : 'a list) : 'a list =
    let rec helper seen acc = function
      | [] -> List.rev acc
      | x :: xs ->
        if List.mem x seen then helper seen acc xs
        else helper (x :: seen) (x :: acc) xs
    in helper [] [] lst
  in
  match words with
  | [] -> ""
  | word :: rest -> max_word word rest

