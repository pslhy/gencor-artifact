let rec count_divisors (n : int) : bool =
    let rec aux x y =
        if x = 1 then y
        else if n mod x = 0 then aux (x - 1) (y + 2)
        else aux (x - 1) y in
    (aux (n div 2) 0) mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
