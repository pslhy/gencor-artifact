let rec text_lowercase_underscore (text : string) : bool =
    let is_lowercase s =
        let rec loop (i, n) =
            if i >= String.length s then true
            else if 'a' <= String.get s i && String.get s i <= 'z' then (i + 1, n + 1)
            else if String.get s i = '_' then (i + 1, n)
            else false
        in
        loop (0, 0)
    in
    let is_empty s = s = "" in
    is_empty text || is_lowercase text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
