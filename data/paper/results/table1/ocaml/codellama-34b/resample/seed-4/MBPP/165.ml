(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
let rec count_char_position (str1 : string) : int = 
    (* Get the first character in the string and its index *)
    match str1 with 
    | str1 when String.length str1 = 0 -> 0
    | str1 -> 
        let c = str1.[0] in
        let index = String.index str1 c in
        (* Get the number of characters that occur at the same position in the alphabet *)
        let result = count_char_position (String.sub str1 1 (String.length str1 - 1)) in
        (* Add the current character index to the result *)
        result + (if index = 0 then 0 else 1)
;;

(* Example usage *)
count_char_position "hello world";;

