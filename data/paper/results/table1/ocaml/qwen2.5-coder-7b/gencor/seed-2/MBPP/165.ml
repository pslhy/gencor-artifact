
let rec count_char_position (str1 : string) : int = 
    let count_positions chars idx count = 
        if idx = String.length chars then count
        else if chars.[idx] = Char.chr ((idx mod 26) + int_of_char 'a') 
                       || chars.[idx] = Char.chr ((idx mod 26) + int_of_char 'A') 
        then count + 1
        else count
    in
    count_positions (String.lowercase_ascii str1) 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
