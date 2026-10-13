let rec long_words (n : int) (str : string) : string list =
  if String.length str > n then
    [str]
  else
    []

let rec find_long_words (n : int) (str_list : string list) : string list =
  match str_list with
  | [] -> []
  | str :: rest ->
    let long_words = long_words n str in
    long_words @ find_long_words n rest

let () =
  let words = ["hello"; "hi"; "hey"; "hiya"; "howdy"] in
  let long_words = find_long_words 5 words in
  List.iter Printf.printf "%s\n" long_words


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
