let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  match (x, y, z) with
  | ("", _, _) -> 0
  | (_, "", _) -> 0
  | (_, _, "") -> 0
  | (x :: xs, y :: ys, z :: zs) ->
    let lcs = lcs_of_three xs ys zs in
    if x = y && x = z then 1 + lcs
    else
      let lc1 = lcs_of_three xs ys zs in
      let lc2 = lcs_of_three xs ys zs in
      let lc3 = lcs_of_three xs ys zs in
      if x = y && x <> z then max (lc1 + 1) lc2
      else if y = z && y <> x then max (lc2 + 1) lc3
      else if z = x && z <> y then max (lc3 + 1) lc1
      else max (lc1 + 1) (max (lc2 + 1) lc3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
