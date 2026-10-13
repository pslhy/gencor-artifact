(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
let rec max_Product (arr : int list) :  int * int =
    match arr with
    | [] | [_] -> failwith "Invalid input"
    | hd::tl -> let (x, y) = max_Product tl in
                if hd * x > y * hd then (hd, x)
                else if hd * y > x * y then (x, hd)
                else (x, y)

