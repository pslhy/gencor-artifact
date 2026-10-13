let rec extract_values (text : string) : string list = 
    let rec find_quotation_start idx =
        if idx >= String.length text then None
        else if text.[idx] = '"' then Some idx
        else find_quotation_start (idx + 1)
    in
    let rec find_quotation_end start_idx =
        if start_idx >= String.length text then None
        else if text.[start_idx] = '"' then Some start_idx
        else find_quotation_end (start_idx + 1)
    in
    let rec extract_from_text idx =
        if idx >= String.length text then []
        else match find_quotation_start idx with
            | Some start -> 
                match find_quotation_end (start + 1) with
                | Some end_idx -> 
                    (String.sub text (start + 1) (end_idx - (start + 1))) :: extract_from_text (end_idx + 2)
                | None -> extract_from_text (start + 1)
            | None -> extract_from_text (idx + 1)
    in
    extract_from_text 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
