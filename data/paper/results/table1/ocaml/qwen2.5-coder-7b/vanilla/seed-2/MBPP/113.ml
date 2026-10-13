let rec check_integer (text : string) : bool = 
    let trim_spaces = String.trim text in
    match trim_spaces with 
    | "" -> false
    | c when not (Char.is_digit c || c = '-' || c = '+') -> false
    | _ -> 
        let rec validate chars =
            match chars with
            | [] -> true
            | c::rest -> 
                if not (Char.is_digit c) then false else validate rest
        in
        validate (String.to_list trim_spaces)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
