let rec max_product_tuple (list1 :  (int * int) list) : int =
  match list1 with
  | [] -> raise (Invalid_argument "Empty list")
  | [(x, y)] -> abs (x * y)
  | (x, y) :: tl -> max (abs (x * y)) (max_product_tuple tl)
  
let rec max_abs_tuple (list1 :  (int * int) list) : int =
  match list1 with
  | [] -> raise (Invalid_argument "Empty list")
  | [(x, y)] -> max (abs x) (abs y)
  | (x, y) :: tl -> max (max (abs x) (abs y)) (max_abs_tuple tl)

let max_abs_mul list1 =
  let max_product = max_product_tuple list1 in
  let max_abs = max_abs_tuple list1 in
  max max_product (max_abs * max_abs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
