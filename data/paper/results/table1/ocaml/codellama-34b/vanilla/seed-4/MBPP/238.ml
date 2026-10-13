let rec number_of_substrings (str : string) : int = 
    (* base case: if the string is empty, there are no non-empty substrings *)
    if str = "" then 
        0
    else 
        (* get the first character of the string *)
        let first = String.get str 0 in
        (* get the substring of the rest of the string *)
        let rest = String.sub str 1 (String.length str - 1) in
        (* count the number of substrings of the rest of the string *)
        let count = number_of_substrings rest in
        (* add 1 to the count if the first character is not whitespace *)
        if first <> ' ' then 
            count + 1
        else 
            count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
