(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a string representing a sentence, *)
(*     the sentence contains some words separated by a space, *)
(*     and you have to return a string that contains the words from the original sentence, *)
(*     whose lengths are prime numbers, *)
(*     the order of the words in the new string should be the same as the original one. *)
(*     Example 1: *)
(*     >>> words_in_sentence "This is a test" *)
(*     "is" *)
(*     Example 2: *)
(*     >>> words_in_sentence "lets go for swimming" *)
(*     "go for" *)
(*     Constraints: *)
(*     * 1 <= len(sentence) <= 100 *)
(*     * sentence contains only letters *)
let rec words_in_sentence (sentence : string) : string = 
  let is_prime n =
    if n <= 1 then false
    else
      let rec check i =
        if i * i > n then true
        else if n mod i = 0 then false
        else check (i + 1)
      in check 2
  in
  let words = Str.split (Str.regexp " ") sentence in
  let prime_length_words = List.filter (fun word -> is_prime (String.length word)) words in
  String.concat " " prime_length_words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec words_in_sentence (sentence : string) : string = 
  let is_prime n =
    if n <= 1 then false
    else
      let rec check i =
        if i * i > n then true
        else if n mod i = 0 then false
        else check (i + 1)
      in check 2
  in
  let words = String.split_on_char ' ' sentence in
  let prime_length_words = List.filter (fun word -> is_prime (String.length word)) words in
  String.concat " " prime_length_words

