let rec max_Product (arr : int list) :  int * int = 
  let rec helper max1 max2 = function
    | [] -> (max1, max2)
    | hd :: tl -> 
        if hd > max1 then
          helper hd max1 tl
        else if hd > max2 then
          helper max1 hd tl
        else
          helper max1 max2 tl
  in
  match arr with
  | [] | [_] -> invalid_arg "List must contain at least two elements"
  | a :: b :: rest -> helper (max a b) (min a b) rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
