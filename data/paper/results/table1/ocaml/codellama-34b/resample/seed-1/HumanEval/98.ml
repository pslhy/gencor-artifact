(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
let rec count_upper (s : string) : int =
    let is_uppercase (c : char) : bool =
        match c with
        | 'A' .. 'Z' -> true
        | _ -> false
    in
    let is_even (i : int) : bool = (i mod 2) == 0 in
    match s with
    | "" -> 0
    | _ ->
        let first_char = String.get s 0 in
        if is_uppercase first_char && is_even 0 then
            1 + count_upper (String.sub s 1 ((String.length s) - 1))
        else
            count_upper (String.sub s 1 ((String.length s) - 1))

