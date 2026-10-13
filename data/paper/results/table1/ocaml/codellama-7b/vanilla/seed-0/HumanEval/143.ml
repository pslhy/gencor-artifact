let rec words_in_sentence (sentence : string) : string =
  match sentence with
  | "" -> ""
  | _ ->
    let is_prime x =
      let rec check i =
        if i = x then true
        else if x mod i = 0 then false else check (i + 1)
      in check 2
    in
    let rec filter_prime (sentence : string) (acc : string) : string =
      match words_of_sentence sentence with
      | [] -> acc
      | h :: t ->
        let len = String.length h in
        if is_prime len then filter_prime sentence (h ^ acc)
        else filter_prime t acc
    and words_of_sentence (sentence : string) : string list =
      String.split_on_char ' ' sentence
    in filter_prime sentence ""


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
