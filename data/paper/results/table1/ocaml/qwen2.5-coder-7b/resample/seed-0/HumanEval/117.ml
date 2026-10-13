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
  let is_consonant c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false 
    | _ -> true 
  in
  let count_consonants ws = 
    List.fold_left (fun acc w -> acc + (List.length (List.filter is_consonant (List.of_string w)))) 0 ws 
  in
  let words = 
    s 
    |> String.split_on_chars [' '] 
    |> List.filter (fun w -> count_consonants [w] = n) 
  in
  words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list = 
  let is_consonant c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false 
    | _ -> true 
  in
  let count_consonants ws = 
    List.fold_left (fun acc w -> acc + (List.length (List.filter is_consonant (Array.to_list (String.to_array w))))) 0 ws 
  in
  let words = 
    s 
    |> String.split_on_chars [' '] 
    |> List.filter (fun w -> count_consonants [w] = n) 
  in
  words

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:95: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list = 
  let is_consonant c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false 
    | _ -> true 
  in
  let count_consonants ws = 
    List.fold_left (fun acc w -> acc + (List.length (List.filter is_consonant (String.label w)))) 0 ws 
  in
  let words = 
    s 
    |> String.split_on_chars [' '] 
    |> List.filter (fun w -> count_consonants [w] = n) 
  in
  words

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Unbound value "String.label" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list = 
  let is_consonant c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false 
    | _ -> true 
  in
  let count_consonants ws = 
    List.fold_left (fun acc w -> acc + (List.length (List.filter is_consonant (List.of_string w)))) 0 ws 
  in
  let words = 
    s 
    |> String.split_on_chars [' '] 
    |> List.filter (fun w -> count_consonants [w] = n) 
  in
  words

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list = 
  let is_consonant c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false 
    | _ -> true 
  in
  let count_consonants ws = 
    List.fold_left (fun acc w -> acc + (List.length (List.filter is_consonant (Array.to_list (Bytes.to_array w))))) 0 ws 
  in
  let words = 
    s 
    |> String.split_on_chars [' '] 
    |> List.filter (fun w -> count_consonants [w] = n) 
  in
  words

