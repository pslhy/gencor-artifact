let rec replace_spaces (string : string) : string = 
    (* Iterate through each character and replace space with %20 *)
    let rec replace_helper (chars : char list) : char list =
        match chars with
        | [] -> []
        | c :: cs -> if c == ' ' then "%20" :: replace_helper cs else c :: replace_helper cs
    
    (* Convert char list to string *)
    String.of_char_list (replace_helper (String.to_char_list string))

let replace_all_spaces (string : string) : string =
    (* Recursively replace spaces in the string *)
    replace_spaces string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
