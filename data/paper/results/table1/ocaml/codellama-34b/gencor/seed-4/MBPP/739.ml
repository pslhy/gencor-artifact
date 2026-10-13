
let rec find_Index (n : int) : int = 
    let ( << ) a b = a * 10 + b in
    let rec helper i k = 
        if i = 0 then
            1
        else
            let x = i + k + 1 in
            let rec inner i' = 
                if i' >= x then
                    i' + 1
                else
                    2 * inner (i' + 1) in
            let res = inner 1 in
            if res mod x = 0 then
                res / x
            else
                1 + helper (i - 1) k
    in
    helper n 1 + 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
