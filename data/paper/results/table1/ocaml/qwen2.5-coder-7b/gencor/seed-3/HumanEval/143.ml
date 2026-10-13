
let rec words_in_sentence (sentence : string) : string = 
  let split_words = String.split_on_char ' ' in
  let is_prime n = 
    if n <= 1 then false 
    else if n = 2 then true 
    else not (List.exists (fun x -> n mod x = 0) (List.init ((int_of_float (sqrt (float n)))) (fun x -> x + 1))) in
  let filter_prime_length_words words = List.filter (fun word -> is_prime (String.length word)) words in
  let join_words = String.concat " " in
  join_words (filter_prime_length_words (split_words sentence))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
