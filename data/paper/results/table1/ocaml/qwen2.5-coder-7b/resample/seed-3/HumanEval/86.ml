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
  let split_words = String.split_on_char ' ' in
  let sort_word = String.sort compare in
  let join_words = String.concat " " in
  join_words (List.map sort_word (split_words s))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:19: Unbound value "String.sort" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string = 
  let split_words = String.split_on_char ' ' in
  let sort_word = Array.of_list 
    (List.sort compare (String.to_list ())) 
    |> Array.to_list 
    |> String.of_list in
  let join_words = String.concat " " in
  join_words (List.map sort_word (split_words s))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:8: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string = 
  let split_words = String.split_on_char ' ' in
  let sort_word word = 
    String.to_list word 
    |> List.sort compare 
    |> String.of_seq in
  let join_words = String.concat " " in
  join_words (List.map sort_word (split_words s))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string = 
  let split_words = String.split_on_char ' ' in
  let sort_word word = 
    let rec convert_to_list s i acc = 
      if i < String.length s then 
        convert_to_list s (i + 1) (s.[i] :: acc)
      else 
        List.rev acc in
    convert_to_list word 0 [] 
    |> List.sort compare 
    |> String.of_seq in
  let join_words = String.concat " " in
  join_words (List.map sort_word (split_words s))

