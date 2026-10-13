let rec find_max (words : string list) : string = 
  let rec max_unique acc = function
    | [] -> acc
    | w :: ws ->
      let unique_chars = String.length (String.filter_dupes w) in
      let current_max_unique = String.length (String.filter_dupes acc) in
      if unique_chars > current_max_unique || (unique_chars = current_max_unique && compare w acc <= 0) then
        max_unique w ws
      else
        max_unique acc ws
  in
  match words with
  | [] -> ""
  | _ -> max_unique (List.hd words) (List.tl words)


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
