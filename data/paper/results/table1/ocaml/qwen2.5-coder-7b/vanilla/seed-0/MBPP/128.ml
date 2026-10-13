let rec long_words (n : int) (str : string) : string list = 
  if String.length str > n then [str] else []

let longer_than_n (n : int) (words : string list) : string list =
  List.concat (List.map (fun word -> long_words n word) words)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
