let rec x_or_y (n : int) (x : int) (y : int) : int = 
    let is_prime num =
        if num <= 1 then false
        else
            let rec check divisor =
                if divisor * divisor > num then true
                else if num mod divisor = 0 then false
                else check (divisor + 1)
            in check 2
    in
    if is_prime n then x else y


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
