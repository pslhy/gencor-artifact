
let rec sum_Of_Subarray_Prod (arr : int list) : int =
  let rec helper (acc : int) (curr : int) (len : int) : int =
    if len = List.length arr then acc else
    helper (acc + (List.fold_left ( * ) 1 (List.rev (List.tl (List.rev (List.init len (fun i -> List.nth arr i))))))) (curr + 1) len
  in helper 0 0 1

(* Test Cases *)
let () = print_int (sum_Of_Subarray_Prod [1; 2; 3; 4]) (* 51 *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
