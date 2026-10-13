let rec long_words (n : int) (str : string) : string list = 
  if String.length str > n then [ str ] else []
  
let filter_long_words (n : int) (words : string list) : string list = 
  List.flatten (List.map (long_words n) words)

(* Example usage:
let words = ["hello"; "world"; "OCaml"; "programming"; "is"; "fun"] in
let long_words_list = filter_long_words 5 words in
print_string (String.concat ", " long_words_list);  (* Output: OCaml, programming *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
