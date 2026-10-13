let rec find_max (words : string list) : string =
  match words with
  | [] -> ""
  | x :: xs ->
    let unique_chars = String.to_list x |> List.sort |> List.uniq in
    let x_unique_count = List.length unique_chars in
    let xs_max = find_max xs in
    let xs_unique_count = String.to_list xs_max |> List.sort |> List.uniq |> List.length in
  if x_unique_count > xs_unique_count then
    x
  else if x_unique_count < xs_unique_count then
    xs_max
  else
    String.compare x xs_max < 0 && x || x_unique_count = xs_unique_count && xs_max


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
