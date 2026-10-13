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
  match String.split_on_chars s [" "] with
  | [] -> ""
  | x :: xs ->
    let new_word = List.map ~f:(fun c -> c) x |> List.sort ~compare:Char.to_int |> String.of_char_list in
    if xs = [] then new_word
    else new_word ^ " " ^ anti_shuffle (String.concat ~sep:"" xs)
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.split_on_chars" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  match String.split_on_char s [" "] with
  | [] -> ""
  | x :: xs ->
    let new_word = List.map ~f:(fun c -> c) x |> List.sort ~compare:Char.to_int |> String.of_char_list in
    if xs = [] then new_word
    else new_word ^ " " ^ anti_shuffle (String.concat ~sep:"" xs)
;;

