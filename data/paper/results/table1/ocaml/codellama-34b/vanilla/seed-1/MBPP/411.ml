let rec snake_to_camel (word : string) : string =
    let capitalize (s : string) =
        let first = String.sub s 0 1 in
        let rest = String.sub s 1 (String.length s - 1) in
        String.concat "" [ String.uppercase first; rest ]
    in
    let is_lowercase (c : char) = c >= 'a' && c <= 'z' in
    let is_uppercase (c : char) = c >= 'A' && c <= 'Z' in
    let is_delimiter (c : char) = c = '_' in
    let rec aux (i : int) : string =
        if i >= String.length word then
            ""
        else if is_lowercase word.[i] || is_uppercase word.[i] then
            String.make 1 word.[i] ^ aux (i + 1)
        else if is_delimiter word.[i] then
            aux (i + 1)
        else
            aux (i + 1)
    in
    String.concat "" (aux 0) |> capitalize


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
