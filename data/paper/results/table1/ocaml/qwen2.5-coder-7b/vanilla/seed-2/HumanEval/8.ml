let rec sum_product (numbers : int list) :  int * int = 
    let rec sum lst acc = 
        match lst with
        | [] -> acc
        | x :: xs -> sum xs (acc + x)
    and product lst acc = 
        match lst with
        | [] -> acc
        | x :: xs -> product xs (acc * x)
    in (sum numbers 0, product numbers 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list. *)
(*     Empty sum should be equal to 0 and empty product should be equal to 1. *)
(*     >>> sum_product [] *)
(*     (0, 1) *)
(*     >>> sum_product [1; 2; 3; 4] *)
(*     (10, 24) *)
