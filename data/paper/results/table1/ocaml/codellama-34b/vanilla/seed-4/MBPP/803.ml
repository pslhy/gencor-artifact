let rec is_perfect_square (n : int) : bool = 
    (* base case: 1 is a perfect square *)
    let rec loop (i : int) (limit : int) : bool = 
        if i >= limit then false
        else if i*i = n then true
        else loop (i + 1) limit
    in
    loop 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
