let rec count_divisors (n : int) : bool =
    let rec aux (acc : int) (i : int) : bool =
        if i > n then
            acc mod 2 = 0
        else if n mod i = 0 then
            aux (acc + 1) (i + 1)
        else
            aux acc (i + 1)
    in
    aux 0 1

let divisors_are_even (n : int) : bool =
    n > 0 && count_divisors n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
