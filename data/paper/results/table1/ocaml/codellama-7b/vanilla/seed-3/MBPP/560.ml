let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
  match test_tup1 with
  | [] -> test_tup2
  | h :: t ->
      if List.mem h test_tup2 then union_elements t test_tup2 else h :: union_elements t test_tup2

let rec sort (l : 'a list) : 'a list =
  match l with [] -> [] | h :: t -> insert h (sort t)

and insert (e : 'a) (l : 'a list) : 'a list =
  match l with [] -> [e] | h :: t -> if e <= h then e :: l else h :: insert e t

let union_sorted_lists (test_list1 : int list) (test_list2 : int list) : int list =
  match test_list1 with [] -> test_list2 | h :: t -> sort (union_elements test_list2 [h])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
