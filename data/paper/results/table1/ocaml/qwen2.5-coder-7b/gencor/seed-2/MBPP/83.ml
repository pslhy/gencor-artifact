
let rec get_Char (strr : string) : string = 
    let ascIIVal (ch : char) : int = 
        int_of_char ch 
    in
    let addChars (acc : int) (ch : char) : int = 
        acc + ascIIVal ch 
    in
    let asciiSum : int = 
        strr 
        |> String.to_seq 
        |> Seq.fold_left addChars 0 
    in
    let resultChar : char = 
        char_of_int ((asciiSum mod 26) + 97) 
    in
    String.make 1 resultChar

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
