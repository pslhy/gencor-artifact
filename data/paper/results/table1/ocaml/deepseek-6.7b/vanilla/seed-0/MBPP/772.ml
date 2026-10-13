let rec remove_length (test_str : string) (k : int) : string =
    let split_str = Str.split (Str.regexp_string " ") test_str in
    let filtered_str = List.filter (fun word -> not (String.length word = k)) split_str in
    String.concat " " filtered_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
