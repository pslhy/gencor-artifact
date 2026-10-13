
let rec is_upper (string : string) : string = 
    let rec convert chars idx n = 
        if idx = n then chars
        else 
            let new_char = Char.uppercase_ascii (chars.[idx]) in
            convert (String.make 1 new_char ^ String.sub chars (idx + 1) (n - idx - 1)) (idx + 1) n
    in convert string 0 (String.length string)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
