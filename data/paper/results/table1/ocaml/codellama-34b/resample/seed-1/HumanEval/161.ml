(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec solve (s : string) : string =
    let reverse (s : string) : string =
        let len = String.length s in
        let rec sub (i : int) (j : int) : string =
            if i >= j then ""
            else String.make 1 s.[j - 1] ^ (sub i (j - 1))
        in sub 1 len
    in
    let rec aux s acc =
        match s with
            | [] -> acc
            | h :: t ->
                if h >= 'a' && h <= 'z' then
                    aux t (h - 32 :: acc)
                else if h >= 'A' && h <= 'Z' then
                    aux t (h + 32 :: acc)
                else
                    aux t (h :: acc)
    in
    let chars = Array.to_list (Array.init (String.length s) (fun i -> s.[i])) in
    let result = aux chars [] in
    if chars = [] then
        result
    else
        reverse (String.concat "" (List.map (fun c -> String.make 1 c) result))

