let rec lps (str : string) : int =
    if str = "" then 0
    else if str.[0] = str.[String.length str - 1] then 1 + lps (str.[1..String.length str - 2])
    else max (lps (str.[1..])) (lps (str.[..String.length str - 2]))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
