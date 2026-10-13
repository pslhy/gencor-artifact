let rec count_upper (s : string) : int = 
    match s with 
    | "" -> 0 
    | s' :: s'' -> 
        let vowel = s' in 
        if vowel = 'A' || vowel = 'E' || vowel = 'I' || vowel = 'O' || vowel = 'U' then 
            match s'' with 
            | "" -> 
                if s' = vowel then 
                    1 
                else 
                    0 
            | _ -> 
                if (s' = vowel) && (s'' = vowel) then 
                    2 
                else if (s' = vowel) && not (s'' = vowel) then 
                    1
                else 
                    0 
        else 
            0 
in count_upper "aBCdEf";; 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
