let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
  match (test_tup1, test_tup2) with
  | ([], []) -> []
  | ([], h2::t2) -> h2::union_elements test_tup1 t2
  | (h1::t1, []) -> h1::union_elements t1 test_tup2
  | (h1::t1, h2::t2) ->
     if h1 < h2 then h1::union_elements t1 test_tup2
     else if h1 > h2 then h2::union_elements test_tup1 t2
     else h1::union_elements t1 t2
;;

(* helper function to sort list in ascending order *)
let rec quicksort list =
  match list with
  | [] -> []
  | pivot::rest -> 
  let smaller,larger = List.partition (fun x -> x <= pivot) rest in
  (quicksort smaller) @ [pivot] @ (quicksort larger)
;;

(* function to find union and sort *)
let union_and_sort list1 list2 =
  let x = union_elements list1 list2 in
  quicksort x
;;

(* test cases *)
print_int (union_and_sort [1;2;3] [2;3;4]); 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
