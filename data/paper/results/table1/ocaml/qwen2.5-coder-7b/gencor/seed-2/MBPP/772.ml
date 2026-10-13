
let rec remove_length (test_str : string) (k : int) : string = 
    let words = String.split_on_char ' ' test_str in
    let rec filter_words (words : string list) : string list =
        match words with
        | [] -> []
        | word :: rest ->
            if String.length word = k then
                filter_words rest
            else
                word :: filter_words rest
    in
    String.concat " " (filter_words words)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
