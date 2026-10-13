let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
  match test_tup1 with
  | [] -> test_tup2
  | h::t ->
      if (List.mem h test_tup2) then union_elements t test_tup2
      else h :: union_elements t test_tup2

let sort_list (unsorted : int list) : int list =
  List.sort compare unsorted

let sort_and_union (list1 : int list) (list2 : int list) : int list =
  let union_res = union_elements list1 list2 in
  sort_list union_res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
