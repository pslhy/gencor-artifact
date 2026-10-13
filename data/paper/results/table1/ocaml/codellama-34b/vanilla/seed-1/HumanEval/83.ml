let rec starts_one_ends (n : int) : int =
    let rec aux (acc : int) (i : int) : int =
        if i > n then
            acc + 1
        else
            let count =
                if i mod 10 = 1 then
                    2
                else
                    1
            in
            aux (acc + count) (i * 10)
    in
    aux 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
