let rec get_Char (strr : string) : string = 
    let ascIIVal (ch : char) : int = 
        int ch - int 'a' in
    let rec sum_ascII (s : string) (acc : int) : int = 
        match s with 
        | "" -> acc
        | _ -> sum_ascII (String.sub s 1 (String.length s - 1)) (acc + ascIIVal (s.[0])) in
    let result = sum_ascII strr 0 in
    let finalChar = char ((result mod 26) + int 'a') in
    String.make 1 finalChar;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
