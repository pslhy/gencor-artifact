let rec first_non_repeating_character (str1 : string) : string option =
    match str1 with 
    | "" -> None
    | str1 -> let c = String.get str1 0 
               and rest = String.sub str1 1 (String.length str1 - 1) in
               if (String.count_substring (String.make 1 c) str1 = 1) then 
                  Some c 
               else 
                  first_non_repeating_character rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
