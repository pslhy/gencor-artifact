let rec first_non_repeating_character (str1 : string) : string option = 
    let rec count_chars s char_map = 
        match s with
        | '' -> char_map
        | h::t -> 
            let new_map = 
                if char_map |> Map.mem h 
                then char_map |> Map.add h (char_map |> Map.find h + 1)
                else char_map |> Map.add h 1
            in
            count_chars t new_map
    in
    let char_count = count_chars (String.to_seq str1) Map.empty in
    let rec find_non_repeating char_map = 
        match char_map with
        | MapEmpty -> None
        | MapNode (_, v, left, right) -> 
            if v = 1 then Some (Map.key char_map)
            else (match find_non_repeating left with
                    | Some _ as res -> res
                    | None -> find_non_repeating right)
    in
    find_non_repeating char_count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
