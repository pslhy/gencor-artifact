let rec long_words (n : int) (str : string) : string list =
    match str with
    | [] -> []
    | hd :: tl -> if String.length hd > n then hd :: long_words n tl
    | hd :: tl -> long_words n tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
