let rec find_Index (n : int) : int =
    let rec find_Triangular (num : int) : int =
        let current_triangular = (num * (num + 1)) / 2 in
        if current_triangular < 10 ^ n then num - 1 else find_Triangular (num - 1)
    in
    find_Triangular (n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
