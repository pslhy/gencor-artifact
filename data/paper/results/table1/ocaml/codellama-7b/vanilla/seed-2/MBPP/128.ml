let rec long_words (n : int) (str : string) : string list =
  match str with
  | [] -> []
  | h :: t ->
    if String.length h > n then
      h :: long_words n t
    else
      long_words n t

long_words 5 ["hello"; "world"; "big"; "word"; "abc"]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
