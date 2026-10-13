
let rec remove_length (test_str : string) (k : int) : string = 
  let words = String.split_on_char ' ' test_str in
  let remove_k_length_words words = 
    List.filter (fun word -> String.length word <> k) words
  in
  let result_words = remove_k_length_words words in
  String.concat " " result_words

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
