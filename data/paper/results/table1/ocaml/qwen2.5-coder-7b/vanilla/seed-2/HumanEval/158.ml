let rec find_max (words : string list) : string = 
    let count_unique_chars (word : string) : int =
        let chars = Hashtbl.create 256 in
        List.iter (fun c -> 
            if Hashtbl.mem chars c then 
                Hashtbl.remove chars c
            else 
                Hashtbl.add chars c true
        ) (List.of_seq (String.to_seq word));
        Hashtbl.length chars
    in
    let rec find_max_helper (words : string list) (max_word : string) (max_count : int) : string =
        match words with
        | [] -> max_word
        | word::rest ->
            let count = count_unique_chars word in
            if count > max_count || (count = max_count && word < max_word) then
                find_max_helper rest word count
            else
                find_max_helper rest max_word max_count
    in
    find_max_helper words "" 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
