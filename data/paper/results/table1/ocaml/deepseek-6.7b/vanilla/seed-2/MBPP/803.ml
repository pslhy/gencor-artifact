let rec is_perfect_square (n : int) : bool =
  let rec sqrt_recursive (low : int) (high : int) : int =
    if high >= low then
      let mid = (low + high) / 2 in
      let mid_sq = mid * mid in
      if mid_sq = n then mid
      else if mid_sq > n then sqrt_recursive low (mid - 1)
      else sqrt_recursive (mid + 1) high in
  let sqrt_val = sqrt_recursive 0 n in
  sqrt_val * sqrt_val = n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
