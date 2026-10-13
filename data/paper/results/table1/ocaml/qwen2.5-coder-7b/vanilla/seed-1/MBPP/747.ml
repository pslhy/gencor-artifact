let rec lcs_of_three (x : string) (y : string) (z : string) : int = 
  let lenx = String.length x in
  let leny = String.length y in
  let lenz = String.length z in
  let rec helper i j k =
    if i = lenx || j = leny || k = lenz then 0
    else if x.[i] = y.[j] && y.[j] = z.[k] then 1 + helper (i + 1) (j + 1) (k + 1)
    else max (max (helper (i + 1) j k) (helper i (j + 1) k)) (helper i j (k + 1))
  in
  helper 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
