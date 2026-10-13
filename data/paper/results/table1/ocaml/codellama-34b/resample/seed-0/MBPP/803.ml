(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
let rec is_perfect_square (n : int) : bool =
    if n <= 0 then false
    else if n = 1 then true
    else if n mod 10 = 0 then is_perfect_square n / 10
    else begin
        let x = int_of_float (sqrt (float_of_int n)) in
        let y = x * x in
        if y = n then true
        else is_perfect_square y
    end

