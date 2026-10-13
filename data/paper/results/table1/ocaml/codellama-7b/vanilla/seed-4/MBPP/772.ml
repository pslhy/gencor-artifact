let rec remove_length (test_str : string) (k : int) : string = 
    let words = Str.split_delim (Str.regexp " ") test_str in 
    let filtered_words = List.filter (fun word -> String.length word <> k) words in 
    String.concat " " filtered_words


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
