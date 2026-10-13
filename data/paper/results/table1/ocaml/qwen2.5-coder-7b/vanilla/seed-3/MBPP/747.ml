let rec lcs_of_three (x : string) (y : string) (z : string) : int = 
  let len_x = String.length x and len_y = String.length y and len_z = String.length z in
  let rec helper i j k =
    if i = 0 || j = 0 || k = 0 then 0
    else if x.[i - 1] = y.[j - 1] && x.[i - 1] = z.[k - 1] then 1 + helper (i - 1) (j - 1) (k - 1)
    else max (max (helper (i - 1) j k) (helper i (j - 1) k)) (helper i j (k - 1))
  in
  helper len_x len_y len_z


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
