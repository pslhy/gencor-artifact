let rec capital_words_spaces (str1 : string) : string = 
    let should_space = function
        | 'A' .. 'Z' -> true
        | _ -> false
    in
    let rec impl (str2 : string) (acc : string) : string list =
        match str2 with
        | [] -> []
        | hd :: tl when not (should_space hd) -> hd :: acc
        | hd :: tl -> impl tl (hd :: ' ' :: acc)
    in
    String.concat "" (impl str1 [])
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
