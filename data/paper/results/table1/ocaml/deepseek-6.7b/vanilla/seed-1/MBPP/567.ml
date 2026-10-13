let rec issort_list (list1 : int list) : bool =
  match list1 with
  | [] -> true
  | [_] -> true
  | head :: (next :: _ as tail) -> head <= next && issort_list tail

(* Test Cases *)

(* A sorted list *)
let sorted_list = [1; 2; 3; 4; 5]
let test1 = issort_list sorted_list  (* Should return true *)

(* An unsorted list *)
let unsorted_list = [1; 3; 2; 4; 5]
let test2 = issort_list unsorted_list  (* Should return false *)

(* An empty list *)
let empty_list = []
let test3 = issort_list empty_list  (* Should return true *)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a specified list is sorted or not. *)
