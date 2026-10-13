let rec find_max (words : string list) : string =
  match words with
  |[] -> ""
  |[h] -> h
  |h::t ->
    let (max_length, max_word) = find_max t in
    let h_length = 
      List.fold_right (fun c -> (+) (Map.find_opt c default_map |> Option.value ~default:1)) (String.to_list h) 0 
    in
    if h_length > max_length then (h_length, h)
    else if h_length == max_length && String.compare h max_word < 0 then (max_length, max_word)
    else (max_length, max_word)


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
