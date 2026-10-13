(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
let rec count_char_position (str1 : string) : int = 
    let count_positions chars idx count = 
        if idx = String.length chars then count
        else if chars.[idx] = Char.chr ((idx mod 26) + int_of_char 'a') 
                       || chars.[idx] = Char.chr ((idx mod 26) + int_of_char 'A') 
        then count_positions chars (idx + 1) (count + 1)
        else count_positions chars (idx + 1) count
    in
    count_positions str1 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:14: Unbound value "count_positions" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_char_position (str1 : string) : int = 
    let rec count_positions chars idx count = 
        if idx = String.length chars then count
        else if chars.[idx] = Char.chr ((idx mod 26) + int_of_char 'a') 
                       || chars.[idx] = Char.chr ((idx mod 26) + int_of_char 'A') 
        then count_positions chars (idx + 1) (count + 1)
        else count_positions chars (idx + 1) count
    in
    count_positions str1 0 0

