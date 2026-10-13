let rec dif_Square (n : int) : bool =
    if n < 0 then false
    else if n = 0 then true
    else
        let rec checker (i : int) (j : int) : bool =
            if i > j then false
            else
                let square_difference = n - (i * i) in
                if square_difference = 0 then true
                else if square_difference < 0 then checker (i + 1) (j - 1)
                     else checker (i + 1) j
        in checker 0 (int_of_float (sqrt (float_of_int n)))

let x = dif_Square 5
let y = dif_Square 3
let z = dif_Square 4


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
