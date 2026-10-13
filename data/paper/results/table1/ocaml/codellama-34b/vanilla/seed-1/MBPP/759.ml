let rec is_decimal (num : string) : bool =
    let is_valid_char c =
        let c' = Char.code c in
        c' >= 48 && c' <= 57 || c' = 46 in
    if String.length num = 0 then false
    else if String.contains num '.' then
        let parts = String.split_on_char '.' num in
        List.length parts = 3 || (List.length parts > 1 && List.length parts < 3)
    else
        let parts = String.split_on_char ' ' in
        List.length parts = 2 || (List.length parts > 1 && List.length parts < 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
