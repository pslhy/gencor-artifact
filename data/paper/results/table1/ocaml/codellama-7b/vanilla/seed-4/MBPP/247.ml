let rec lps (str : string) : int = 
    (* base case: if the string is empty, there are no palindromic subsequence *)
    if str = "" then 0 
    (* otherwise, check if the entire string is a palindrome *)
    else if is_palindrome str then String.length str 
    (* recursion step: find the longest palindromic subsequence in the first half of the string *)
    else max (lps (String.sub str 1 (String.length str - 1)) + 1) (lps (String.sub str 2 (String.length str - 2))

let rec is_palindrome (str : string) : bool =
    (* base case: if the string is empty, it is a palindrome *)
    if str = "" then true
    (* otherwise, check if the first and last characters are the same, and recurse on the rest of the string *)
    else str.[0] = str.[String.length str - 1] && is_palindrome (String.sub str 1 (String.length str - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
