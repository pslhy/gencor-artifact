let rec find_Index (n : int) : int = 
  let rec triangular_number (k : int) : int = 
    (k * (k + 1)) / 2 
  in 
  let rec find_index_helper (k : int) : int = 
    if triangular_number k >= (int_of_string (String.make n '9')) then 
      k 
    else 
      find_index_helper (k + 1) 
  in 
  find_index_helper 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
