
let rec remove_whitespaces (text1 : string) : string = 
    let rec loop chars result = 
        match chars with
        | [] -> result
        | c :: cs -> 
            if c = ' ' then 
                loop cs result
            else 
                loop cs (result ^ string_of_int (Char.code c)) in
    loop (String.to_seq text1) ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
