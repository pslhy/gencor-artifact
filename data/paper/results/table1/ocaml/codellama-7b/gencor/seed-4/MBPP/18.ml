
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
    match (string, second_string) with 
    | ("", second_string) | (char, "") -> char_of_int(String.get second_string 0) 
    | (char, string) -> let reamining_string = remove_dirty_chars (String.sub string 1 (String.length string - 1)) (second_string) in 
                        if Char.equal char (String.get reamining_string 0) then 
                          String.sub reamining_string 1 (String.length reamining_string - 1)
                        else
                          reamining_string

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
