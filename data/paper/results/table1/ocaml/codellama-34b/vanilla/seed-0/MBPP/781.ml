let rec count_divisors (n : int) : bool =
    if n <= 1 then
        true
    else
        let increment = 1 in
        let decrement = if n mod 2 = 0 then 1 else 2 in
        if count_divisors (n / increment) = count_divisors (n / decrement) then
            true
        else
            false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
