let rec find_Index (n : int) : int =
  let rec triangular (k : int) : int =
    if k < 2 then k
    else k + triangular (k - 1)
  in
  let rec binary_search (lo : int) (hi : int) : int =
    if lo > hi then hi
    else
      let mid = (lo + hi) / 2 in
      let mid_val = triangular mid in
      let next_val = triangular (mid + 1) in
      if mid_val <= n && next_val > n then mid + 1
      else if mid_val <= n then binary_search mid mid
      else binary_search (mid + 1) hi
  in
  binary_search 1 (n * 20)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
