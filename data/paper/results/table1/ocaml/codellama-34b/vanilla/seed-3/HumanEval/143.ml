let rec words_in_sentence (sentence : string) : string =
  if sentence = "" then ""
  else
    let (word, rest) = take_word sentence in
    if is_prime (String.length word) then
      word ^ " " ^ words_in_sentence rest
    else
      words_in_sentence rest

let rec take_word (sentence : string) : string * string =
  match sentence with
  | h :: t when h = ' ' -> ("", t)
  | h :: t ->
      let (word, rest) = take_word t in
      (word ^ h, rest)
  | [] -> ("", [])

let rec is_prime (n : int) : bool =
  if n = 1 then false
  else if n = 2 || n = 3 then true
  else
    let i = 5 in
    let rec loop (i : int) : bool =
      if i * i <= n then
        if n mod i = 0 then false
        else loop (i + 2)
      else true
    in
    loop i


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
