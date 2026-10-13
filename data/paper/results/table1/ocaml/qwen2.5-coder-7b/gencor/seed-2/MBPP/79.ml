
let rec word_len (s : string) : bool = 
    let count_chars chars idx = 
        if idx = String.length s then
            chars
        else
            let curr_char = String.get s idx in 
            if Char.code curr_char land 1 = 1 then 
                chars + 1
            else
                chars in 
    let len = count_chars 0 0 in 
    len land 1 = 1 ;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
