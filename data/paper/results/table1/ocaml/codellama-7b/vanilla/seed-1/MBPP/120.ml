let rec max_product_tuple (list1 :  (int * int) list) : int =
match list1 with
| [] -> 0
| hd::tl -> max (abs (fst hd *. snd hd)) (max_product_tuple tl)

let max_product (list : int list) : int =
let tuples = List.map (fun x -> (x, x)) list in
max_product_tuple tuples

let _ =
List.iter (fun x -> Printf.printf "%d " (max_product_tuple x))  [[1; 4]; [3; 4]; [1; 2]; [1; 4]; [4; 5]; [1; 2]]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
