let rec mul_even_odd (list1 : int list) : int =
    let rec aux (list1 : int list) (acc1, acc2) =
        match list1 with
        | [] -> acc1 * acc2
        | x :: xs ->
            if x mod 2 = 0 then
                aux xs (acc1 * x, acc2)
            else
                aux xs (acc1, acc2 * x)
    in
    aux list1 (1, 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
