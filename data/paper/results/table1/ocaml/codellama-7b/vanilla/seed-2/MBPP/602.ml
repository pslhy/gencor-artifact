let rec first_repeated_char (str1 : string) : string option =
    match str1 with
        | "" -> None
        | str2 ->
            let rev_str = String.rev str2 in
            let chars = List.map Char.uppercase_ascii @@ String.to_list rev_str in
            match List.find_duplicate chars with
                | Some x -> Some x
                | None -> first_repeated_char (String.sub rev_str 1 (String.length rev_str - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
