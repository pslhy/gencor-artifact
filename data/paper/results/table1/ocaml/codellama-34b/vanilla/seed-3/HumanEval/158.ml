let rec find_max (words : string list) : string =
  match words with
  | [] -> ""
  | [word] -> word
  | word :: rest ->
      let max_word = find_max rest in
      if word = max_word || char_set_size(char_set_of_string word) < char_set_size(char_set_of_string max_word)
      then max_word
      else word

and char_set_of_string (s : string) : char list =
  s
  |> List.map(fun c -> [c])
  |> List.concat
and char_set_size (char_set : char list) : int =
  List.length char_set


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
