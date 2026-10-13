let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
  if test_list = [] then []
  else
    let (x, y) = test_list.hd in
    let rec inner_loop (xs :  (int * int) list) (acc : (int * int) list) =
      match xs with
      | (x', y') :: [] -> if (x' + y') = x && (x' + y') = y then (x', y') :: acc else []
      | (x', y') :: ys -> if (x' + y') = x && (x' + y') = y then inner_loop ys ((x', y') :: acc) else inner_loop ys acc
      | [] -> [] in
    (x, y) :: inner_loop test_list.tl []

let test_list1 = [(2, 3);(4, 5)];;
let test_list2 = [(2, 3);(5, 6)];;
let test_list3 = [(2, 3);(4, 5);(6, 7)];;

find_combinations test_list1;;
find_combinations test_list2;;
find_combinations test_list3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
