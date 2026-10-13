let rec max_Product (arr : int list) :  int * int =
  match arr with
  |[] -> (0,0)
  |[x] -> (0,x)
  |x::y::xs ->
      let (max1,max2) = max_Product xs in
      if x * y > max1 * max2 then
        (x,y)
      else
        (max1,max2)

let test_max_Product = max_Product [ 1; 2; 3; 4; 5]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
