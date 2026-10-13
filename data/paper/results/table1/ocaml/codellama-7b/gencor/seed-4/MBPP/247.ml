
let rec lps (str : string) : int = 
    (* base case: if the string is empty, there are no palindromic subsequence *)
    if str = "" then 0 
    (* otherwise, check if the entire string is a palindrome *)
    else if str = String.lowercase_ascii str then String.length str 
    (* if not, check if the first and last characters match *)
    else if String.get str 0 = String.get str (String.length str - 1) then
        (* if they do, recurse on the middle of the string *)
        lps (String.sub str 1 (String.length str - 2))
    else
        (* otherwise, recurse on both substrings *)
        max (lps (String.sub str 1 (String.length str - 2))) (lps (String.sub str 0 (String.length str - 1)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
