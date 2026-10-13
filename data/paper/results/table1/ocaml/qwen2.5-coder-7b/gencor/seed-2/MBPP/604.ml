
let rec reverse_words (s : string) : string = 
    let trim_spaces = String.trim in
    let words = String.split_on_char ' ' trim_spaces s in
    let rec reverse_list lst = 
        match lst with
        | [] -> []
        | h::t -> reverse_list t @ [h] in
    let reversed_words = reverse_list words in
    String.concat " " reversed_words

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
