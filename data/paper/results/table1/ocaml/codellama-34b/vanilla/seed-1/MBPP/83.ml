let rec get_Char (strr : string) : string =
    let acc = 0 in
    let rec loop( str, acc) =
        if str = [] then
            acc 
        else
            loop (str.slice(0,str.indexOf(' ')), acc)
    in
    loop ( strr, acc )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
