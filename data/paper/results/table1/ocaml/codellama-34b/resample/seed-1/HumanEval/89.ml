(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec encrypt (s : string) : string =
    let rec aux (s : string) (acc : string) : string =
        if s = "" then
            acc
        else
            let curr = String.get s 0 in
            let encrypted =
                if curr >= 'a' && curr <= 'z' then
                    'a' + (curr - 'a' + 2) mod 26
                else if curr >= 'A' && curr <= 'Z' then
                    'A' + (curr - 'A' + 2) mod 26
                else
                    curr
            in
            aux (String.sub s 1 (String.length s - 1)) (acc ^ String.make 1 encrypted)
    in
    aux s ""

