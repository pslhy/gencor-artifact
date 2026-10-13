let rec remove_Occ (s : string) (ch : string) : string = 
    let rec find_index (s : string) (ch : string) (index : int) : int(option) =
        if index >= String.length s then None 
        else if s.[index] = ch.[0] then Some index 
        else find_index s ch (index + 1)
    in
    let opt_index1 = find_index s ch 0 in
    match opt_index1 with
    | None -> s
    | Some index1 ->
        let rec remove_from_index (s : string) (index : int) (count : int) : string =
            if index >= String.length s then s 
            else if count = 0 then s.[index] :: remove_from_index s (index + 1) count 
            else remove_from_index s (index + 1) (count - 1)
        in
        let new_s = remove_from_index s 0 index1 in
        let opt_index2 = find_index new_s ch 0 in
        match opt_index2 with
        | None -> new_s
        | Some index2 -> remove_from_index new_s 0 (index2 + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
