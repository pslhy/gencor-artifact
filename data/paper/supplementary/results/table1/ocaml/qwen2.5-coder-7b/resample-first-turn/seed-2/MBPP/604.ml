let rec reverse_words (s : string) : string = 
    let trim_spaces = Str.split (Str.regexp "[ \t]+") s in
    let rec reverse_list = function
        | [] -> []
        | h::t -> reverse_list t @ [h]
    in
    String.concat " " (reverse_list trim_spaces)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
