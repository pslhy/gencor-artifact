let rec text_match_three (text : string) : bool = 
    let rec find_a (idx : int) : bool = 
        match String.length text - idx with
        | 0 -> false
        | _ -> 
            if text.[idx] = 'a' then find_b (idx + 1)
            else false
    and find_b (idx : int) : bool = 
        match String.length text - idx with
        | 0 -> false
        | 1 -> false
        | _ -> 
            if text.[idx] = 'b' then find_b (idx + 1)
            else if text.[idx] = 'a' then find_b (idx + 1)
            else false
    in
    find_a 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
