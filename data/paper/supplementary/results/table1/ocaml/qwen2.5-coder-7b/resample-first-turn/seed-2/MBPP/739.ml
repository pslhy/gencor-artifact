let rec find_Index (n : int) : int = 
    let rec find_index (k : int) (count : int) : int =
        let triangular_number = (k * (k + 1)) / 2 in
        if Int.to_string triangular_number |> String.length = n then count
        elif Int.to_string triangular_number |> String.length > n then -1
        else find_index (k + 1) (count + 1)
    in
    find_index 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
