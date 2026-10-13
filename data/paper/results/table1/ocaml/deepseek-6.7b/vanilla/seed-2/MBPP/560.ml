let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
  match test_tup1, test_tup2 with
  | [], [] -> []
  | [], h::t -> h::(union_elements [] t)
  | h::t, [] -> h::(union_elements t [])
  | h1::t1, h2::t2 when h1=h2 -> h1::(union_elements t1 t2)
  | h1::t1, h2::t2 when h1<h2 -> h1::(union_elements t1 test_tup2)
  | h1::t1, h2::t2 -> h2::(union_elements test_tup1 t2)

let sorted_union list1 list2 = 
    let result = union_elements list1 list2 in
    List.sort compare result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
