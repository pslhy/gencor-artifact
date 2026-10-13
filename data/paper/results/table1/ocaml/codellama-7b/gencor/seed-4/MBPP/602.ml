
let rec first_repeated_char (str1 : string) : string option = 
    (* base case: if the string is empty, there are no repeated characters *)
    if str1 = "" then None else
    (* if the first character in the string has no repeated occurences, recurse with the remaining string *)
    if List.length (String.split_on_char (String.get str1 0) str1) = 1 then first_repeated_char (String.sub str1 1 (String.length str1 - 1)) else
    (* else return the first character of the repeated occurence *)
    Some (String.get str1 0);;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
