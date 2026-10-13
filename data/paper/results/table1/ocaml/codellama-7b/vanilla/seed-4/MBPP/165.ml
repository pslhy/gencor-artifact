let rec count_char_position (str1 : string) : int = 
    let open Batteries in
    if String.length (str1) = 0 then 
        0
    else
        let c1 = str1.[0] in 
        let sub_str1 = String.sub_bytes (str1, 1, String.length (str1) - 1) in
        let c2 = sub_str1.[0] in 
        if c1 = c2 then 
            count_char_position (sub_str1) + 1
        else
            count_char_position (sub_str1)
    
let string_alphabetical_position (str2 : string) : int = count_char_position (String.lowercase str2);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
