
let rec is_Diff (n : int) : bool =
    let rec aux (n : int) (acc : int) : bool =
        if acc > 0 then
            let (left, right) = (n mod 100, acc mod 100) in
            if (left - right) * 100 >= 0 then
                aux (left - right) (acc - right)
            else
                false
        else
            true
    in
    aux (abs n) (100 * (n / 100))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
