let rec find_adverbs (text : string) : string =
    let rec aux (text : string) (acc : string list) : string * int list =
        match text with
        | [] -> (String.concat " " acc, [0])
        | h :: t ->
            if String.ends_with h "ly" then
                (String.concat " " (h :: acc), 0 :: [length acc])
            else
                aux t (h :: acc)
    in
    aux (String.split_on_char ' ' text) []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
