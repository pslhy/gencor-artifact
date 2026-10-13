let rec check_char (string : string) : string = 
    let length = String.length in 
    if length string = 0 then
        "The length of the string is zero"
    else 
        if string.[0] = string.[length string - 1] then
            string.[0] ^ " is the first and last character"
        else
            string.[0] ^ " is not the first and last character"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
