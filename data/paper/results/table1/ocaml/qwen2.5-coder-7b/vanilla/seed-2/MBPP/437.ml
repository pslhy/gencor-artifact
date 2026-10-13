let rec remove_odd (str1 : string) : string = 
    let rec helper chars idx acc = 
        if idx >= String.length chars then 
            acc 
        else if idx mod 2 = 0 then 
            helper chars (idx + 1) (acc ^ String.sub chars idx 1) 
        else 
            helper chars (idx + 1) acc 
    in 
    helper str1 0 ""

let remove_odd_chars (s : string) : string = 
    remove_odd s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
