let rec lcs_of_three (x : string) (y : string) (z : string) : int = 
    (* base case: if any of the strings are empty, return 0 *)
    if x = "" || y = "" || z = "" then 
        0
    (* if the first characters of all three strings match, recurse with the tails of the strings *)
    else if x.[0] = y.[0] && y.[0] = z.[0] then
        1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
    (* if the first characters of the first two strings match, recurse with the tails of the strings *)
    else if x.[0] = y.[0] then
        1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) z
    (* if the first characters of the first and third strings match, recurse with the tails of the strings *)
    else if x.[0] = z.[0] then
        1 + lcs_of_three (String.sub x 1 (String.length x - 1)) y (String.sub z 1 (String.length z - 1))
    (* if the first characters of the second and third strings match, recurse with the tails of the strings *)
    else if y.[0] = z.[0] then
        1 + lcs_of_three x (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
    (* if no characters match, return 0 *)
    else 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
