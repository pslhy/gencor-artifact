let rec words_in_sentence (sentence : string) : string =
    let words = Str.split_delim sentence in
    match words with
    | [] -> ""
    | word :: rest ->
        if is_prime word then word ^ " " ^ words_in_sentence rest else words_in_sentence rest

let is_prime (n : int) : bool =
    let rec is_prime' (n : int) (divisor : int) : bool =
        if divisor * divisor > n then true
        else if n mod divisor = 0 then false
        else is_prime' n (divisor + 1)
    in is_prime' n 2


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
