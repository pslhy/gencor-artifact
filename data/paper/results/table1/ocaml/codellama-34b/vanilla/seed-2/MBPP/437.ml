let rec remove_odd (str1 : string) : string =
    match str1 with
    | "" -> ""
    | (x::xs) ->
        if x mod 2 = 0 then x::remove_odd xs
        else remove_odd xs
    | _ -> str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
