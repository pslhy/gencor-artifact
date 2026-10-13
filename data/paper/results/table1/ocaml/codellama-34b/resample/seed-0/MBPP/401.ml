(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | head1 :: tail1 ->
    (match test_tup2 with
     | [] -> []
     | head2 :: tail2 ->
       if List.length head1 <> List.length head2 then
         raise (Invalid_argument "Addition not possible between lists of different length")
       else
         let result_head = List.map2 (fun x y -> x + y) head1 head2 in
         result_head :: add_nested_tuples (List.map (fun x -> x :: head1) tail1) tail2) in
  add_nested_tuples [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]]; [[10; 20; 30]; [40; 50; 60]; [70; 80; 90]]

