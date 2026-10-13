let rec remove_lowercase (str1 : string) : string =
    let is_lowercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase s = s
    in
    if not (is_lowercase str1) then
        str1
    else
        let str2 = String.sub (str1, 1, (String.length str1) - 2) in
        if is_lowercase str2 then
            remove_lowercase str2
        else
            str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
