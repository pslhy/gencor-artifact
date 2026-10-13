let rec find_max (words : string list) : string =
  match words with
  | [] -> ""
  | hd :: tl ->
    let n_unique_chars =
      List.fold_left
        (fun n_unique_chars word ->
          if String.contains_from word hd then n_unique_chars
          else n_unique_chars + 1)
        0
        words in
    if n_unique_chars > List.length tl then hd
    else find_max tl


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
