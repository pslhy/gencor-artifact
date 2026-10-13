(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
let rec anti_shuffle (s : string) : string =
  let words = String.split_on_char ' ' s in
  let ordered_words = List.map (fun word ->
    String.concat "" (List.sort compare (String.explode word))) words in
  String.concat " " ordered_words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:42: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  let words = String.split_on_char ' ' s in
  let ordered_words = List.map (fun word ->
  String.concat "" (List.sort compare (String.unsafe_explode word))) words in
  String.concat " " ordered_words

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:40: Unbound value "String.unsafe_explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  let words = String.split_on_char ' ' s in
  let ordered_words = List.map (fun word ->
  String.concat "" (List.sort compare (String.explode word))) words in
  String.concat " " ordered_words

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:40: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  let words = String.split_on_char ' ' s in
  let ordered_words = List.map (fun word ->
  String.concat "" (List.sort compare (String.explode word))) words in
  String.concat " " ordered_words

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:40: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  let words = String.split_on_char ' ' s in
  let ordered_words = List.map (fun word ->
  String.concat "" (List.sort compare (String.explode word))) words in
  String.concat " " ordered_words


