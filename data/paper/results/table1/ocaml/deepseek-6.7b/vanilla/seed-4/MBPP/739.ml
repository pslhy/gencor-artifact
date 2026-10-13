let rec find_Index (n : int) : int =
  let rec aux x i =
    if String.length (string_of_int (x * (x + 1) / 2)) = n then
      i
    else
      aux (x + 1) (i + 1)
  in
  if n = 1 then
    1
  else
    aux 1 1
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
