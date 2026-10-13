
let rec find_Index (n : int) : int = 
    let rec triangular (k : int) (sum : int) : int * int = 
        if (sum + k) > ((int_of_float (float_of_int n)) - 1) then 
            (k - 1, sum) 
        else 
            triangular (k + 1) (sum + k) 
    in 
    let k = triangular 1 0 in 
    fst k + 1

let _ = print_int (find_Index 3)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
