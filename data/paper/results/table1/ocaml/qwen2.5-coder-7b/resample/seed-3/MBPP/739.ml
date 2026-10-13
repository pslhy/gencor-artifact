(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
let rec find_Index (n : int) : int = 
    let rec triangular (k : int) (sum : int) : int * int = 
        if (sum + k) > ((int_of_float (pow 10. (float (n - 1)))) - 1) then 
            (k - 1, sum) 
        else 
            triangular (k + 1) (sum + k) 
    in 
    let rec helper (k : int) (sum : int) : int =
        match triangular k sum with 
        | (index, _) -> index 
    in 
    helper 1 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:40: Unbound value "pow" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Index (n : int) : int = 
    let rec triangular (k : int) (sum : int) : int * int = 
        if (sum + k) > ((int_of_float (Float.pow 10. (float (n - 1)))) - 1) then 
            (k - 1, sum) 
        else 
            triangular (k + 1) (sum + k) 
    in 
    let rec helper (k : int) (sum : int) : int =
        match triangular k sum with 
        | (index, _) -> index 
    in 
    helper 1 0

