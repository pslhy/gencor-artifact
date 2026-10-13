let rec encrypt (s : string) : string = 
    let shift c = 
        if c >= 'a' && c <= 'z' then 
            let new_c = Char.chr ((Char.code c - Char.code 'a' + 4) mod 26 + Char.code 'a') in
            if c = 'y' then 'a' else if c = 'z' then 'b' else new_c
        else if c >= 'A' && c <= 'Z' then 
            let new_c = Char.chr ((Char.code c - Char.code 'A' + 4) mod 26 + Char.code 'A') in
            if c = 'Y' then 'A' else if c = 'Z' then 'B' else new_c
        else c in
    String.map shift s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function encrypt that takes a string as an argument and *)
(*     returns a string encrypted with the alphabet being rotated. *)
(*     The alphabet should be rotated in a manner such that the letters *)
(*     shift down by two multiplied to two places. *)
(*     For example: *)
(*     >>> encrypt "hi" *)
(*     "lm" *)
(*     >>> encrypt "asdfghjkl" *)
(*     "ewhjklnop" *)
(*     >>> encrypt "gf" *)
(*     "kj" *)
(*     >>> encrypt "et" *)
(*     "ix" *)
