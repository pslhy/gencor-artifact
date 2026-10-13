let rec digit_distance_nums (n1 : int) (n2 : int) : int =
    let rec aux (acc : int) (n1 : int) (n2 : int) : int =
        if n1 = 0 && n2 = 0 then
            acc
        else if n1 = 0 then
            aux (acc + 1) n1 (n2 - 1)
        else if n2 = 0 then
            aux (acc + 1) (n1 - 1) n2
        else
            aux (acc + abs(n1 - n2)) (n1 - 1) (n2 - 1)
    in
    aux 0 n1 n2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
