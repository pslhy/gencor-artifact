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
    let rec aux (unique_chars : int list) (words : string list) : string =
        match words with
        | [] -> ""
        | word :: rest ->
            let num_unique_chars = String.length (String.concat "" (Set.to_list (String.to_set word))) in
            if num_unique_chars = List.hd unique_chars = None then
                aux (num_unique_chars :: unique_chars) rest
            else
                word
    in
    aux [] words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:69: Unbound value "Set.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    let rec aux (unique_chars : int list) (words : string list) : string =
        match words with
        | [] -> ""
        | word :: rest ->
            let num_unique_chars = String.length (String.concat "" (List.map String.make_set (String.explode word))) in
            if num_unique_chars <= List.hd unique_chars then
                aux (num_unique_chars :: unique_chars) rest
            else
                word
    in
    aux [] words

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:78: Unbound value "String.make_set" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    let rec aux (unique_chars : int list) (words : string list) : string =
        match words with
        | [] -> ""
        | word :: rest ->
            let num_unique_chars = String.length (String.concat "" (List.map String.to_set (String.explode word))) in
            if num_unique_chars <= List.hd unique_chars then
                aux (num_unique_chars :: unique_chars) rest
            else
                word
    in
    aux [] words

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:78: Unbound value "String.to_set" *)
(*     Hint: Did you mean "to_seq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    let rec aux (unique_chars : int list) (words : string list) : string =
        match words with
        | [] -> ""
        | word :: rest ->
            let num_unique_chars = String.length (String.concat "" (List.map String.to_seq (String.explode word))) in
            if num_unique_chars <= List.hd unique_chars then
                aux (num_unique_chars :: unique_chars) rest
            else
                word
    in
    aux [] words

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:93: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    let rec aux (unique_chars : int list) (words : string list) : string =
        match words with
        | [] -> ""
        | word :: rest ->
            let num_unique_chars = String.length (String.concat "" (List.map (fun c -> String.make 1 c) word)) in
            if num_unique_chars <= List.hd unique_chars then
                aux (num_unique_chars :: unique_chars) rest
            else
                word
    in
    aux [] words

