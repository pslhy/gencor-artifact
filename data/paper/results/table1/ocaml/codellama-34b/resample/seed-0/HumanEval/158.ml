(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec find_max (words : string list) : string =
  match words with
  | [] -> ""
  | hd :: tl ->
      let (_, max_word) =
        List.fold_left
          (fun (max_len, word) w ->
            if String.length w > max_len then (String.length w, w) else (max_len, word))
          (String.length hd, hd) tl in
      let (_, max_word) =
        List.fold_left
          (fun (max_len, word) w ->
            if String.length w > max_len then (String.length w, w) else (max_len, word))
          (String.length max_word, max_word) tl in
      max_word

