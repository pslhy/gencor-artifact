let rec capital_words_spaces (str1 : string) : string = 
    let is_capital_letter (c : char) : bool = c >= 'A' && c <= 'Z' in
    let rec inner (str2 : string) (i : int) (new_str : string) : string = 
        if i >= String.length str2 then new_str else
        let next_word_end = try String.index_from str2 i ' ' with Not_found -> String.length str2 in
        let word = String.sub str2 i (next_word_end - i) in
        let new_word = if is_capital_letter word.[0] then " " ^ word else word in
        inner str2 (next_word_end + 1) (new_str ^ new_word) 
    in
    inner str1 0 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
