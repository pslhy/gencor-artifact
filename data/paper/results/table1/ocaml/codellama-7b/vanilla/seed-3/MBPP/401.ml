let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | hd :: tl ->
    begin
      match test_tup2 with
      | [] -> []
      | hd2 :: tl2 -> [hd @ hd2] :: add_nested_tuples tl tl2
    end

;;

let test_list1 = [[1;2];[3;4];[5;6]];;
let test_list2 = [[7;8];[9;10];[11;12]];;

let result = add_nested_tuples test_list1 test_list2;;

result;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
