let rec count_Substrings (s : string) : int = 
    (* base case: ignore empty string *)
    match s with 
    | "" -> 0 
    | _ -> 
        (* check if substring with sum of digits equal to length exist *)
        let substring_Found = ref false in 
        for i = 1 to String.length(s) - 1 do 
            (* take substring of length i *)
            let substring = String.sub s 0 i in 
            (* compute sum of digits *)
            let sum_Digits = 0 in 
            for j = 0 to String.length(substring) - 1 do 
                sum_Digits + (int_of_char substring.[j] - int_of_char '0') 
            done; 
            (* check if sum of digits equal to length of substring *)
            if sum_Digits = i then substring_Found := true 
        done; 
        (* base case: no such substring exists *)
        if not !substring_Found then count_Substrings (String.tail s)
        (* recursive case: such substring exists, count recursively *)
        else 1 + count_Substrings (String.tail s) 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
