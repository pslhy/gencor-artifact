
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  let rec aux (l1 : int list) (l2 : int list) : (int * (int list)) =
    match l1 with
      [] -> (match l2 with [] -> (List.hd l2, [])
             | head::tail -> (head, (head :: tail)))
    | head::tail ->
       (match l2 with [] -> (head, tail)
                  | head1::tail1 ->
                     (match compare head head1 with 0 -> (head, (head :: num1))
                                                  | compare -> (min head head1, num2)))
  in
  let rec merge (l1 : int list) (l2 : int list) (l3 : int list) : int list =
    match l1 with [] -> l2
      | head::tail ->
         (match l2 with [] -> head::(merge l3 l1)
                     | head2::tail2 -> (match aux tail head2 with
                           | (head4, []) -> head4::(merge l3 tail l1)
                           | (head4, m1) -> head4::(merge m1 tail2 l3)))
  in
  merge num1 (merge num2 num3) []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
