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
    let words = sentence |> String.split_on_char ' ' in
    let length = Array.length words in
    (* Creates a list of tuples containing the word and its length *)
    let word_lengths = Array.map (fun word -> (word, String.length word)) words in
    let filtered_word_lengths = Array.filter (fun (word, length) -> is_prime length) word_lengths in
    (* Creates a string from the list of words *)
    let result = Array.reduce (fun str (word, _) -> str ^ " " ^ word) filtered_word_lengths "" in
    result

let is_prime (n : int) : bool = 
    (* Checks if n is a prime number *)
    let rec is_prime_helper (n : int) (i : int) : bool = 
        if i = 1 then true 
        else if n mod i = 0 then false 
        else is_prime_helper n (i - 1) 
    in 
    is_prime_helper n (n - 1)

let () =
    let sentence = "This is a test" in
    let result = words_in_sentence sentence in
    print_endline result

