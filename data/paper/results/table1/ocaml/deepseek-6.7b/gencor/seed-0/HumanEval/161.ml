
let rec solve (s : string) : string =
    let rec solve' i (res : string) =
        if i < 0 then res
        else
            let c = String.get s i in
            let res = 
                if Char.code c >= 65 && Char.code c <= 90 then begin
                    String.make 1 (Char.chr (Char.code c + 32)) ^ res
                end
                else if Char.code c >= 97 && Char.code c <= 122 then begin
                    String.make 1 (Char.chr (Char.code c - 32)) ^ res
                end
                else c ^ res
            in 
            solve' (i - 1) res
    in
    solve' (String.length s - 1) ""

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
