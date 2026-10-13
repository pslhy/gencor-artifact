let rec find_Index (n : int) : int =
    let rec aux (i : int) (acc : int) : int =
        if i > 0 then
            let triangular = (i * (i + 1)) / 2 in
            if acc < 10 then
                find_Index triangular + 1
            else
                i
        else
            0 in
    let triangular = (n * (n + 1)) / 2 in
    if triangular < n then
        find_Index triangular + 1
    else if triangular > n then
        find_Index triangular - 1
    else
        triangular


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
