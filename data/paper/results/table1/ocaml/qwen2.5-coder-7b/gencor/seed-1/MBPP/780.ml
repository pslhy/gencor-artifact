
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec check (curr: int * int) (lst : (int * int) list) : (int * int) option =
    match lst with
    | [] -> None
    | (x, y) :: tl ->
        if curr = (x, y) then Some (x, y)
        else check curr tl
  in
  let rec combine acc lst =
    match lst with
    | [] -> acc
    | (x, y) :: tl ->
        let acc' = List.filter (fun z -> not (Option.is_some (check z lst))) (acc @ [(x, y); (y, x)]) in
        combine acc' tl
  in
  combine [] test_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
