let rec find_Index (n : int) : int = 
    let rec calculate_Triangular (i : int) : int = 
        i * (i + 1) / 2 
    in
    let rec check_Digits (num : int) : bool = 
        String.length (string_of_int num) = n 
    in
    let rec find_Index' (i : int) : int = 
        if check_Digits (calculate_Triangular i) then i else find_Index' (i + 1) 
    in
    find_Index' 1 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
