let rec words_in_sentence (sentence : string) : string = 
  let rec is_prime n =
    if n <= 1 then false
    else if n = 2 then true
    else if n mod 2 = 0 then false
    else
      let rec check d =
        if d * d > n then true
        else if n mod d = 0 then false
        else check (d + 1)
      in check 3
  and filter_words words =
    match words with
    | [] -> []
    | word :: rest ->
      if is_prime (String.length word) then word :: filter_words rest
      else filter_words rest
  in
  let words = String.split_on_char ' ' sentence in
  String.concat " " (filter_words words)


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
