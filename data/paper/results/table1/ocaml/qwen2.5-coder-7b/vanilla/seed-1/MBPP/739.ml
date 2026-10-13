let rec find_Index (n : int) : int = 
  let rec triangular (i: int) (tri: int) : int = 
    if tri >= (int_of_string ("1" ^ (String.make (n - 1) '0'))) &&
       tri < (int_of_string ("1" ^ (String.make n '0'))) then i
    else triangular (i + 1) ((i * (i + 1)) / 2)
  in triangular 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
