let rec solve (s : string) : string = 
    let rec helper chars idx len =
        if idx = len then List.rev chars
        else 
            let ch = s.[idx] in
            if ch >= 'a' && ch <= 'z' then helper (ch - 32 :: chars) (idx + 1) len
            else if ch >= 'A' && ch <= 'Z' then helper (ch + 32 :: chars) (idx + 1) len
            else helper (ch :: chars) (idx + 1) len
    in
    let len = String.length s in
    let contains_letters = ref false in
    for i = 0 to len - 1 do
        if s.[i] >= 'a' && s.[i] <= 'z' || s.[i] >= 'A' && s.[i] <= 'Z' then contains_letters := true
    done;
    if !contains_letters then helper [] 0 len else String.rev s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
