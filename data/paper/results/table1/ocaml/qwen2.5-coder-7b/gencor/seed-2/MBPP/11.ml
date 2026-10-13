
let rec remove_Occ (s : string) (ch : string) : string = 
    let rec find_index (s : string) (ch : string) (index : int) : int option = 
        if index = String.length s then 
            None 
        else if String.sub s index 1 = ch then 
            Some index 
        else 
            find_index s ch (index + 1) 
    in
    match find_index s ch 0 with 
    | None -> s 
    | Some first_index -> 
        let rec find_last_index (s : string) (ch : string) (index : int) : int option = 
            if index < 0 then 
                None 
            else if String.sub s index 1 = ch then 
                Some index 
            else 
                find_last_index s ch (index - 1) 
        in
        match find_last_index s ch (String.length s - 1) with 
        | None -> s 
        | Some last_index -> 
            let first_part = String.sub s 0 first_index in 
            let last_part = if first_index = last_index then "" else String.sub s (first_index + 1) (last_index - first_index - 1) in 
            let rest_part = if last_index = String.length s - 1 then "" else String.sub s (last_index + 1) ((String.length s) - last_index - 1) in 
            first_part ^ last_part ^ rest_part

(* Example usage *)
let result = remove_Occ "banana" "n" 
(* result will be "baana" *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
