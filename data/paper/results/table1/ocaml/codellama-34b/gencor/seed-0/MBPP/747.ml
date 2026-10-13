
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    if x = "" || y = "" || z = "" then
        0
    else if x.[0] = y.[0] && y.[0] = z.[0] then
        1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
    else
        let a = lcs_of_three x y (String.sub z 1 (String.length z - 1))
        and b = lcs_of_three x (String.sub y 1 (String.length y - 1)) z
        and c = lcs_of_three (String.sub x 1 (String.length x - 1)) y z in
        1 + min a b c

let lcs_of_three_strings (s1 : string) (s2 : string) (s3 : string) : int =
    lcs_of_three s1 s2 s3

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
