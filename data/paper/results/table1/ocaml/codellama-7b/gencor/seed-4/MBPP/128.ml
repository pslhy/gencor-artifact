
let rec long_words (n : int) (str : string) : string list = 
    match str with 
    | head :: tail -> 
    (match String.length head with 
        | len -> len > n 
        | _ -> false 
    ) 
        :: long_words n tail 
    | _ -> [] 

let word_list = ["hello", "world", "ocaml"] 
let long_words_list = long_words 6 word_list 
print_string (long_words 6 word_list |> String.concat ", ")

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
