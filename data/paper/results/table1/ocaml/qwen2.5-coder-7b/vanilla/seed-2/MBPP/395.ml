let rec first_non_repeating_character (str1 : string) : string option = 
    let count_chars chars = 
        let rec aux str assoc = 
            match str with
            | "" -> assoc
            | x :: xs -> 
                if List.mem_assoc x assoc then
                    aux xs ((x, 1 + List.assoc x assoc) :: (List.remove_assoc x assoc))
                else
                    aux xs ((x, 1) :: assoc)
        in
        aux (List.of_seq (String.to_seq str1)) []
    in
    let rec find_non_repeating chars = 
        match chars with
        | [] -> None
        | (x, n) :: xs -> 
            if n = 1 then
                Some x
            else
                find_non_repeating xs
    in
    find_non_repeating (count_chars str1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
