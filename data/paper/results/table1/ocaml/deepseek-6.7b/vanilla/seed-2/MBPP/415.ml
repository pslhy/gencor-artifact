let rec max_Product (arr : int list) :  int * int =
  match arr with
  | [] -> raise (Invalid_argument "Empty list")
  | [x] -> raise (Invalid_argument "List should contain at least 2 elements")
  | x1::x2::rest ->
      let ((p1,p2),max_prodr) = List.fold_left (fun ((a,b),c) x ->
                                  if (a*b > c) then ((x1,x),a*b)
                                  else ((a,x),c)) ((x1,x2),x1*x2) rest 
      in (p1,p2) 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
