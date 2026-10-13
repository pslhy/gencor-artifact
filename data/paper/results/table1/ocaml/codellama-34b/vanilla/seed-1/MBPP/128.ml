let rec long_words (n : int) (str : string) : string list =
    let str_list = String.split_on_char ' ' str in
    let rec aux (n : int) (str_list : string list) : string list =
        match str_list with
        | [] -> []
        | x :: xs ->
            if String.length x >= n then
                x :: aux n xs
            else
                aux n xs
    in
    aux n str_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
