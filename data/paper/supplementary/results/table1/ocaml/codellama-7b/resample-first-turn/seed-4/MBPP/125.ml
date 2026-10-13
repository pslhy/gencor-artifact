let rec find_length (string : string) : int = 
    let length = String.length string in
    match string with 
    | "" -> length 
    | _ -> let count = count_string string.[0] in 
           let sub = find_length (String.sub string 1 (length -1)) in
           max (sub - count) (count - sub) ; 
    
     let count_string (c : char) : int = 
        let length = String.length string in
        let rec count i : int = 
            if i == length then 0 
            else if string.[i] == c
            then count (i + 1) + 1 
            else count (i + 1) 
            in count 0 


    


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
