let rec is_perfect_square (n : int) : bool =
    match n with
    | 0 | 1 -> true
    | x when x mod 4 = 0 || x mod 9 = 0 || x mod 25 = 0 || x mod 49 = 0 -> true
    | x when x mod 16 = 7 || x mod 81 = 9 || x mod 256 = 16 || x mod 625 = 25 -> true
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
