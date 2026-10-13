let rec words_in_sentence (sentence : string) : string =
  let words = String.split_on_char ' ' sentence in
  let is_prime n =
    let rec check i =
      i > n || (n mod i <> 0 && check (i + 1)) in
    n > 1 && check 2 in
  let select_prime words = 
    List.filter (fun word -> is_prime (String.length word)) words in
  let primes = select_prime words in
  String.concat " " primes

let _ = words_in_sentence "This is a test" (* "is" *)
let _ = words_in_sentence "lets go for swimming" (* "go for" *)


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
