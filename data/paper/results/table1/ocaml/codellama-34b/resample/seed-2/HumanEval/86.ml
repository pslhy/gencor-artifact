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
    let words = String.split_on_whitespace s in
    let ordered_words = List.map order_word words in
    String.concat " " ordered_words

and order_word (w : string) : string =
    let chars = String.split_on_whitespace w in
    let ordered_chars = List.sort chars in
    String.concat "" ordered_chars

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound value "String.split_on_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
    let words = String.split_on_whitespace s in
    let ordered_words = List.map (fun w -> order_word w) words in
    String.concat " " ordered_words

and order_word (w : string) : string =
    let chars = Array.of_list (String.to_list w) in
    Array.sort_uniq compare chars;
    String.of_char_list (Array.to_list chars)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound value "String.split_on_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
    let words = String.split_on_char ' ' s in
    let ordered_words = List.map (fun w -> order_word w) words in
    String.concat " " ordered_words

and order_word (w : string) : string =
    let chars = String.to_list w in
    List.sort_uniq compare chars;
    String.of_char_list chars

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:17: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
    let words = String.split_on_char ' ' s in
    let ordered_words = List.map (fun w -> order_word w) words in
    String.concat " " ordered_words

and order_word (w : string) : string =
    let chars = Array.of_list (String.to_array w) in
    Array.sort_uniq compare chars;
    String.of_array chars

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:32: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
    let words = String.split_on_char ' ' s in
    let ordered_words = List.map (fun w -> order_word w) words in
    String.concat " " ordered_words

and order_word (w : string) : string =
    let chars = String.to_list w in
    List.sort_uniq compare chars;
    String.of_list chars

