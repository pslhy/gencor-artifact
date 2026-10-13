let rec find_Index (n : int) : int =
    if n = 1 then 1 
    else 
        let rec helper (num_of_digits : int) : int =
            let next_num_of_digits = num_of_digits + 1 in
            let base_num = (next_num_of_digits * (next_num_of_digits + 1)) / 2 in
            if base_num > 10 then helper(next_num_of_digits)
            else base_num
        in helper 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
