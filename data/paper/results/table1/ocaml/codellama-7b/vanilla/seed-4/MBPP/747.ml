let rec lcs_of_three (x : string) (y : string) (z : string) : int = 
    (* base case: if any of the strings is empty, return 0 *)
    if x = "" || y = "" || z = "" then 
        0
    (* recursion case: else calculate LCS of first and second strings, and add it to LCS of second and third strings *)
    else
        let lcs12 = lcs_of_three (String.sub x 0 1) (String.sub y 0 1) (String.sub z 0 1) in
        let lcs23 = lcs_of_three (String.sub y 0 1) (String.sub z 0 1) (String.sub x 0 1) in
        lcs12 + lcs23


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
