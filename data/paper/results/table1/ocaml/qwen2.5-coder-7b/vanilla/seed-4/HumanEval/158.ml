let rec find_max (words : string list) : string = 
  let rec max_word acc = function
    | [] -> acc
    | x::xs -> 
        let unique_chars = String.length (String.sort_uniq_chars x) in
        let unique_chars_acc = String.length (String.sort_uniq_chars acc) in
        if unique_chars > unique_chars_acc || (unique_chars = unique_chars_acc && x < acc) then
          max_word x xs
        else
          max_word acc xs
  in
  match words with
  | [] -> ""
  | x::xs -> max_word x xs


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
