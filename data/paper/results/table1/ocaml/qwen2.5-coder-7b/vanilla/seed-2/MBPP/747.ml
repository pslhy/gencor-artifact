let rec lcs_of_three (x : string) (y : string) (z : string) : int = 
    let len_x = String.length x in
    let len_y = String.length y in
    let len_z = String.length z in
    let rec lcs_helper i j k = 
        if i = len_x || j = len_y || k = len_z then 0
        else if x.[i] = y.[j] && y.[j] = z.[k] then 1 + lcs_helper (i + 1) (j + 1) (k + 1)
        else max (max (lcs_helper (i + 1) j k) (lcs_helper i (j + 1) k)) (lcs_helper i j (k + 1))
    in lcs_helper 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
