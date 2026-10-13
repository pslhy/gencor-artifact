let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let (x1, x2, x3, x4) = test_tup1 in
    let (y1, y2, y3, y4) = test_tup2 in
    let list1 = [x1; x2; x3; x4] in
    let list2 = [y1; y2; y3; y4] in
    let result = [(x1, y1); (x2, y2); (x3, y3); (x4, y4); (x1, y2); (x2, y3); (x3, y1); (x4, y2); (x1, y3); (x2, y1); (x3, y4); (x4, y3)] in
    let diff = List.filter (fun (a, b) -> a <> b) result in
    let diff_list = List.map fst diff in
    let output = (List.hd diff_list, List.hd (List.tl diff_list), List.hd (List.tl (List.tl diff_list)), List.hd (List.tl (List.tl (List.tl diff_list)))) in
    output
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
