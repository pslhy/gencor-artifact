let rec find_Index (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 10
  else
    let rec tri_num (n : int) : int =
      if n = 1 then 1
      else if n = 2 then 10
      else tri_num (n - 1) + (n * (n + 1)) / 2
    in
    let rec find_smallest (n : int) : int =
      if n = 0 then raise Not_found
      else if (tri_num n) mod 10 = 0 then n
      else find_smallest (n - 1)
    in
    find_smallest (tri_num (n - 1))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
