let rec lcs_of_three (x : string) (y : string) (z : string) : int =
    let rec aux (i : int) (j : int) (k : int) : int =
        if i < 0 || j < 0 || k < 0 then 0
        else if x.[i] = y.[j] && y.[j] = z.[k] then 1 + aux (i - 1) (j - 1) (k - 1)
        else max (max (aux i j k) (aux i j (k - 1)) (aux i (j - 1) k))
    in
    aux (String.length x - 1) (String.length y - 1) (String.length z - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
