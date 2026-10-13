(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
let rec is_perfect_square (n : int) : bool =
  let rec helper (low : int) (high : int) : bool =
    if low > high then false
    else
      let mid = (low + high) / 2
      if mid * mid = n then true
      else if mid * mid < n then helper mid+1 high
      else helper low mid-1 in
  helper 0 n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_perfect_square (n : int) : bool =
  let rec helper (low : int) (high : int) : bool =
    if low > high then false
    else 
      let mid = (low + high) / 2 in
      if mid * mid = n then true
      else if mid * mid < n then helper mid+1 high
      else helper low mid-1 in
  helper 0 n
;;

