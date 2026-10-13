let rec find_Index (n : int) : int =
    let triangularNumber = n * (n + 1) / 2 in
    let numDigits = String.length (string_of_int triangularNumber) in
    if numDigits = n then
        1
    else
        find_Index(n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
