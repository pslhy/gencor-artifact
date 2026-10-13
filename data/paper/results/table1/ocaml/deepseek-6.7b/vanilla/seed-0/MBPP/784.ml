let rec mul_even_odd (list1 : int list) : int =
    let rec helper (even: int) (odd: int) (lst : int list ) : int * int =
        match lst with
        | [] -> (even, odd)
        | h::t -> if h mod 2 = 0 then helper (even*h) odd t
                  else helper even (odd*h) t
    in 
    let (ev, od) = helper 1 1 list1 in 
    ev*(if od = 1 then 0 else od)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
