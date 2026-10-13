let rec find_max (words : string list) : string =
    match words with
    | [] -> ""
    | h::t -> let max_of_tail = find_max t in
              let h_unique_chars = List.length (unique_chars h) in
              let max_of_tail_unique_chars = List.length (unique_chars max_of_tail) in
              if h_unique_chars > max_of_tail_unique_chars then h
              else if h_unique_chars == max_of_tail_unique_chars && h < max_of_tail then h
              else max_of_tail

and unique_chars (word : string) : char list =
    let rec unique (chars : char list) (unique_chars : char list) : char list =
        match chars with
        | [] -> unique_chars
        | h::t -> if List.mem h unique_chars then unique t unique_chars
                   else unique t (h::unique_chars)
    in unique (List.rev (String.to_char_list word)) []


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
