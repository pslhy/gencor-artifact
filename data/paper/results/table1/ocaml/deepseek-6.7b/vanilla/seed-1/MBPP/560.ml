let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
  match test_tup1 with 
  | [] -> test_tup2
  | hd::tl ->  if List.mem hd test_tup2
                then union_elements tl test_tup2
                else hd :: union_elements tl test_tup2

let rec sort_int_list (input_list : int list) : int list = 
  List.sort (fun x y -> x-y) input_list

let sorted_union_elements (input_tup1 : int list) (input_tup2 : int list) : int list =
  sort_int_list (union_elements input_tup1 input_tup2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
