
let rec is_perfect_square (n : int) : bool =
  let rec helper (low : int) (high : int) : bool =
    if low > high then false
    else
      let mid = (low + high) / 2
      in
      let sqr = mid * mid 
      in
      if sqr = n then true
      else if sqr > n then helper low (mid - 1)
      else helper (mid + 1) high
  in
  if n < 0 then false
  else helper 0 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
