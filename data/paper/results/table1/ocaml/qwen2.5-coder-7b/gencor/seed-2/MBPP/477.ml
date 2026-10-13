
let rec is_lower (string : string) : string = 
    let rec convert chars idx n = 
        if idx = n then chars
        else 
            let new_char = 
                if 'A' <= string.[idx] && string.[idx] <= 'Z' then 
                    string.[idx] + ('a' - 'A')
                else string.[idx]
            in 
            convert (chars.[idx] := new_char; chars) (idx + 1) n
    in 
    let chars = Array.of_list (List.of_seq (String.to_seq string)) in
    convert chars 0 (Array.length chars)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
