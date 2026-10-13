let rec max_Product (arr : int list) :  int * int = 
  let rec find_max_pair = function
    | [] -> failwith "Empty list"
    | [x] -> (x, x)
    | x::y::rest ->
        let (a, b) = find_max_pair rest in
        if x * y > a * b then (x, y) else (a, b)
  in find_max_pair arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
