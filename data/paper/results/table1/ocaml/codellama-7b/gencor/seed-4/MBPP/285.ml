
let rec text_match_two_three (text : string) : bool = 
    (* base case: if the string is empty, there are no 'b' characters following 'a', so return false *)
    if String.length text = 0 then false
    (* recursive case: check if the first character is 'a' and the remaining text contains two or three 'b' characters *)
    else if String.sub text 0 1 = "a" then
        let remaining_text = String.sub text 1 (String.length text - 1) in
        let num_b_chars = String.fold_left (fun count c -> if c = 'b' then count + 1 else count) 0 remaining_text in
        if num_b_chars = 2 || num_b_chars = 3 then true else text_match_two_three remaining_text
    (* if the first character is not 'a', or there are no more characters, there are no 'b' characters following 'a', so return false *)
    else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
