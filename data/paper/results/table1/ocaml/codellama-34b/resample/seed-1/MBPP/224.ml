(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of set bits (binary digits with value 1) in a given number. *)
let rec count_Set_Bits (n : int) : int =
    let rec aux (n : int) (acc : int) : int =
        if n = 0 then
            acc
        else if n mod 2 = 1 then
            aux (n / 2) (acc + 1)
        else
            aux (n / 2) acc
    in
    aux n 0

