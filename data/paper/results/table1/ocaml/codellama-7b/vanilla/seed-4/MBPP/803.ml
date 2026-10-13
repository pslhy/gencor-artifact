let rec is_perfect_square (n : int) : bool = 
    (* base case: if n is a perfect square *)
    let rec helper (i : int) : bool = 
        i * i = n
    in
    (* recursively check squares of i from 1 to n/2 *)
    let rec loop (i : int) : bool = 
        if i * i > n then false 
        else if helper i then true 
        else loop (i + 1)
    in
    loop 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
