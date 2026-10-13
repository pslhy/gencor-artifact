let rec words_in_sentence (sentence : string) : string =
  if sentence = ""
  then ""
  else
    match sentence.[0] with
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' ->
      if List.mem sentence.[0] (permutationsPrime sentence)
      then
        sentence.[0] :: words_in_sentence (String.sub sentence 1 (String.length sentence - 1))
      else
        words_in_sentence (String.sub sentence 1 (String.length sentence - 1))
    | _ ->
      words_in_sentence (String.sub sentence 1 (String.length sentence - 1))

and permutationsPrime (s : string) : string list =
  if s = ""
  then ""
  else
    match s.[0] with
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' ->
      s :: permutationsPrime (String.sub s 1 (String.length s - 1))
    | _ ->
      permutationsPrime (String.sub s 1 (String.length s - 1))


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
