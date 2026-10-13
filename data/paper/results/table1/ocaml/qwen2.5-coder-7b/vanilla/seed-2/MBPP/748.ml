let rec capital_words_spaces (str1 : string) : string = 
    let rec find_space idx str2 = 
        match str2.{idx} with
        | 'A' .. 'Z' -> 
            String.make 1 str2.{idx} ^ " " ^ 
            (find_space (idx + 1) (String.sub str2 (idx + 1) (String.length str2 - idx - 1)))
        | _ -> 
            String.make 1 str2.{idx} ^ find_space (idx + 1) (String.sub str2 (idx + 1) (String.length str2 - idx - 1))
    in
    find_space 0 str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
