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
  let rec max_word acc = function
    | [] -> acc
    | x::xs -> 
        let unique_chars = String.length (String.sort_uniq_chars x) in
        let unique_chars_acc = String.length (String.sort_uniq_chars acc) in
        if unique_chars > unique_chars_acc || (unique_chars = unique_chars_acc && x < acc) then
          max_word x xs
        else
          max_word acc xs
  in
  match words with
  | [] -> ""
  | x::xs -> max_word x xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:43: Unbound value "String.sort_uniq_chars" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word acc = function
    | [] -> acc
    | x::xs -> 
        let unique_chars = String.length (String.filter (fun c -> fst (Char.Map.find_opt c (Char.Map.add c () Char.Map.empty))) x) in
        let unique_chars_acc = String.length (String.filter (fun c -> fst (Char.Map.find_opt c (Char.Map.add c () Char.Map.empty))) acc) in
        if unique_chars > unique_chars_acc || (unique_chars = unique_chars_acc && x < acc) then
          max_word x xs
        else
          max_word acc xs
  in
  match words with
  | [] -> ""
  | x::xs -> max_word x xs

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:43: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word acc = function
    | [] -> acc
    | x::xs -> 
        let unique_chars = String.length (String.filter (fun c -> not (Char.Map.mem c (String.fold_right (fun c acc -> Char.Map.add c () acc) x Char.Map.empty))) x) in
        let unique_chars_acc = String.length (String.filter (fun c -> not (Char.Map.mem c (String.fold_right (fun c acc -> Char.Map.add c () acc) acc Char.Map.empty))) acc) in
        if unique_chars > unique_chars_acc || (unique_chars = unique_chars_acc && x < acc) then
          max_word x xs
        else
          max_word acc xs
  in
  match words with
  | [] -> ""
  | x::xs -> max_word x xs

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:43: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word acc = function
    | [] -> acc
    | x::xs -> 
        let unique_chars = String.length (String.filter (fun c -> not (Char.Map.mem c (String.fold_right (fun c acc -> Char.Map.add c () acc) x Char.Map.empty))) x) in
        let unique_chars_acc = String.length (String.filter (fun c -> not (Char.Map.mem c (String.fold_right (fun c acc -> Char.Map.add c () acc) acc Char.Map.empty))) acc) in
        if unique_chars > unique_chars_acc || (unique_chars = unique_chars_acc && x < acc) then
          max_word x xs
        else
          max_word acc xs
  in
  match words with
  | [] -> ""
  | x::xs -> max_word x xs

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:43: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string = 
  let rec max_word acc = function
    | [] -> acc
    | x::xs -> 
        let unique_chars = String.length (String.filter (fun c -> not (Char.Map.mem c (String.fold_right (fun c acc -> Char.Map.add c () acc) x Char.Map.empty))) x) in
        let unique_chars_acc = String.length (String.filter (fun c -> not (Char.Map.mem c (String.fold_right (fun c acc -> Char.Map.add c () acc) acc Char.Map.empty))) acc) in
        if unique_chars > unique_chars_acc || (unique_chars = unique_chars_acc && x < acc) then
          max_word x xs
        else
          max_word acc xs
  in
  match words with
  | [] -> ""
  | x::xs -> max_word x xs

