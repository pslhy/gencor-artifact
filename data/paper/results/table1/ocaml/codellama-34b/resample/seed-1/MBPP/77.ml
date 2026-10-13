(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
let rec is_Diff (n : int) : bool =
    let rec aux (n : int) (acc : int) : bool =
        if acc > 0 then
            let (left, right) = (n mod 100, acc % 10) in
            if left / 10 = right then
                let (left, right) = (n mod 10, acc / 10) in
                if left = right then
                    false
                else
                    aux n (acc / 10)
            else
                aux n (acc / 10)
        else
            true
    in
    aux n (n mod 100)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:49: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Diff (n : int) : bool =
    let rec aux (n : int) (acc : int) : bool =
        if acc > 0 then
            if acc mod 100 = 0 then
                if n mod 10 = acc mod 10 then
                    aux n (acc / 10)
                else
                    false
            else
                aux n (acc / 10)
        else
            true
    in
    aux n (n mod 100)

