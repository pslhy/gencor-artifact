let rec count_divisors (n : int) : bool =
    let rec check (i : int) : int =
        if i > n then 0
        else if n mod i = 0 then 1 + check (i + 1)
        else check (i + 1)
    in
    let div_count = check 1 in
    div_count mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
