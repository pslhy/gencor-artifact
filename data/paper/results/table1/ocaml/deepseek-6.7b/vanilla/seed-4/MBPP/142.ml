let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int =
  match list1, list2, list3 with
  | [], [], [] -> 0
  | x1::xs1, x2::xs2, x3::xs3 when x1 = x2 && x2 = x3 -> 1 + count_samepair xs1 xs2 xs3
  | _::xs1, _::xs2, _::xs3 -> count_samepair xs1 xs2 xs3
  | _ -> 0

(* Test Case *)

let list1 = [1;2;3;4;5]
let list2 = [1;4;5;6;7]
let list3 = [0;4;7;9;1]
let result = count_samepair list1 list2 list3

(* result should be 2 since list1[1]=list2[1]=list3[1]=4, list1[3]=list2[3]=list3[3]=5 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
