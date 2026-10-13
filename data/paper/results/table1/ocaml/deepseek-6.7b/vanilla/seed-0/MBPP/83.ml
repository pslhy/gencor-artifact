let rec get_Char (strr : string) : string =
    if strr = "" then ""
    else
        let modu = int_of_string(string_of_int (int_of_char strr.[0] + 1))
        and rest_of_strr = get_Char (String.sub strr 1 (String.length strr - 1)) in
        String.make 1 (Char.chr (modu land 26)) ^ rest_of_strr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
