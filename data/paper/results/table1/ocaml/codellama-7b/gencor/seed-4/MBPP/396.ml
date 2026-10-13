
let rec check_char (string : string) : string = 
    let open String in 
    let len = length string in 
    if len == 0 then "E" :: "string cannot be empty" :: [] 
    else if String.equal (string.[0]) (string.[len - 1]) then 
        "T" :: [] 
    else "F" :: []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
