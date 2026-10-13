let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
    let rec aux (n : int) (exp : int) (base : int) : bool =
        if n = 0 then
            true
        else if exp = 0 then
            is_Sum_Of_Powers_Of_Two (n - base * base)
        else
            if (n mod 2) = 0 then
                aux (n / 2) (exp - 1) (base * 2)
            else
                if (n mod 3) = 0 then
                    aux (n / 3) (exp - 1) (base * 3)
                else
                    false
    in
    aux n 3 1
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
