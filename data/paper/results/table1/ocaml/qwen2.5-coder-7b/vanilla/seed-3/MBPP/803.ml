let rec is_perfect_square (n : int) : bool = 
  let rec square_root (x : int) (y : int) : int = 
    let mid = (x + y) / 2 in
    if mid * mid = n then mid
    else if mid * mid < n then square_root (mid + 1) y
    else square_root x (mid - 1) in
  let root = square_root 0 (n / 2) in
  root * root = n;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
