let rec solve (s : string) : string = 
    (* base case: if s is empty return empty string *)
    if s = "" then "" 
    else 
        (* recursively solve the tail of the string *)
        let tailResult = solve (s.tail()) in 
        match s.head() with
        | 'a'..'z' -> tailResult + s.toUpper()
        | 'A'..'Z' -> tailResult + s.toLower()
        | _ -> tailResult + s.head()


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
