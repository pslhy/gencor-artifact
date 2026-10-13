let rec reverse_words (s : string) : string = 
    let words = String.split_on_char ' ' s in
    let rec rev_words (rev : string list) (words : string list) : string list = 
        match words with
        | [] -> rev
        | h :: t -> rev_words (h :: rev) t
    in
    List.rev (rev_words [] words) |> String.concat " "


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
