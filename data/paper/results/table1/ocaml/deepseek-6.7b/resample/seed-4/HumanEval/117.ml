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
  let count_consonants (s : string) : int =
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ" in
    String.length s - (String.length (String.filter (fun c -> not (String.contains consonants c)) s))
  in
  let words = String.split_on_char ' ' s in
  List.filter (fun word -> count_consonants word = n) words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  let count_consonants (s : string) : int =
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ" in
    String.length s - (String.length (String.filter (fun c -> not (String.contains consonants c)) s))
  in
  let words = String.split_on_char ' ' s in
  List.filter (fun word -> count_consonants word = n) words

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  let count_consonants (s : string) : int =
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ" in
    String.length s - (String.length (String.filter (fun c -> not (String.contains consonants c)) s))
  in
  let words = String.split_on_char ' ' s in
  List.filter (fun word -> count_consonants word = n) words

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
  if s = "" then []
  else 
  let vowels = "aeiouAEIOU" in
  let rec count_consonants (s : string) : int =
    match s with
    | "" -> 0
    | c::cs -> if String.contains vowels c then count_consonants cs else 1 + count_consonants cs
  in
  let words = String.split_on_char ' ' s in
  List.filter (fun word -> count_consonants word = n) words

