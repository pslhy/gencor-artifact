
let rec find_max (words : string list) : string =
  match words with
  | [] -> ""
  | x :: xs ->
    let unique_chars = String.to_seq x |> List.of_seq |> List.sort |> List.rev in
    let num_unique_chars = List.length unique_chars in
    let rest_max = find_max xs in
    if num_unique_chars > (String.length rest_max) then x
    else if num_unique_chars = (String.length rest_max) then if x < rest_max then x else rest_max
    else rest_max
;;

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
