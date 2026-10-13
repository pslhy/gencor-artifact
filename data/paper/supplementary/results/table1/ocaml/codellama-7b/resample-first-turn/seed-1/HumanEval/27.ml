let rec flip_case (string : string) : string =
    let is_uppercase s =
        let rec loop (i, s) =
            if i >= String.length s then true
            else if 'a' <= String.get s i && String.get s i <= 'z' then false
            else loop (i + 1, s)
        in
        loop (0, s)
    in
    let is_lowercase s =
        let rec loop (i, s) =
            if i >= String.length s then true
            else if 'A' <= String.get s i && String.get s i <= 'Z' then false
            else loop (i + 1, s)
        in
        loop (0, s)
    in
    let flip_char c =
        if is_uppercase c then Char.lowercase c
        else Char.uppercase c
    in
    String.map flip_char string
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
