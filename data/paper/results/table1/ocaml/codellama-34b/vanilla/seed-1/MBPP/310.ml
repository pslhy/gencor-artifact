let rec string_to_tuple (str1 : string) : string list =
    let str2 = str1 in
    match str1 with
    | "" -> []
    | _ ->
        let front = String.get str2 0 in
        let back = String.sub str2 1 (String.length str2 - 1) in
        (front::string_to_tuple back)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given string to a list of characters. *)
