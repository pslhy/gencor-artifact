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
  let rec max_unique acc = function
    | [] -> acc
    | w :: ws ->
      let unique_chars = String.length (String.filter_dupes w) in
      let current_max_unique = String.length (String.filter_dupes acc) in
      if unique_chars > current_max_unique || (unique_chars = current_max_unique && compare w acc <= 0) then
        max_unique w ws
      else
        max_unique acc ws
  in
  match words with
  | [] -> ""
  | _ -> max_unique (List.hd words) (List.tl words)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:41: Unbound value "String.filter_dupes" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_unique acc = function
    | [] -> acc
    | w :: ws ->
      let unique_chars = String.length (String.filter_duplicates w) in
      let current_max_unique = String.length (String.filter_duplicates acc) in
      if unique_chars > current_max_unique || (unique_chars = current_max_unique && compare w acc <= 0) then
        max_unique w ws
      else
        max_unique acc ws
  in
  match words with
  | [] -> ""
  | _ -> max_unique (List.hd words) (List.tl words)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:41: Unbound value "String.filter_duplicates" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_unique acc = function
    | [] -> acc
    | w :: ws ->
      let unique_chars = String.length (String.filter_ch dedupes w) in
      let current_max_unique = String.length (String.filter_ch dedupes acc) in
      if unique_chars > current_max_unique || (unique_chars = current_max_unique && compare w acc <= 0) then
        max_unique w ws
      else
        max_unique acc ws
  and dedupes c = not (String.contains acc c) in
  match words with
  | [] -> ""
  | _ -> max_unique (List.hd words) (List.tl words)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:41: Unbound value "String.filter_ch" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_unique acc = function
    | [] -> acc
    | w :: ws ->
      let unique_chars = String.length (String.filter_chars (fun c -> not (String.contains acc c)) w) in
      let current_max_unique = String.length (String.filter_chars (fun c -> not (String.contains acc c)) acc) in
      if unique_chars > current_max_unique || (unique_chars = current_max_unique && compare w acc <= 0) then
        max_unique w ws
      else
        max_unique acc ws
  in
  match words with
  | [] -> ""
  | _ -> max_unique (List.hd words) (List.tl words)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:41: Unbound value "String.filter_chars" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_unique acc = function
    | [] -> acc
    | w :: ws ->
      let unique_chars = String.length (String.(filter (fun c -> not (String.contains acc c)) w)) in
      let current_max_unique = String.length (String.(filter (fun c -> not (String.contains acc c)) acc)) in
      if unique_chars > current_max_unique || (unique_chars = current_max_unique && compare w acc <= 0) then
        max_unique w ws
      else
        max_unique acc ws
  in
  match words with
  | [] -> ""
  | _ -> max_unique (List.hd words) (List.tl words)

