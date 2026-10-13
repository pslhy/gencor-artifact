let rec max_Product (arr : int list) :  int * int =
    let rec aux (acc : int * int) (x : int) : int * int =
        if x * fst acc > snd acc * x then x, x * fst acc else fst acc, snd acc * x
    in
    match arr with
    | [] -> failwith "Empty list"
    | [x] -> x, x
    | x :: xs -> aux (x, x) xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
