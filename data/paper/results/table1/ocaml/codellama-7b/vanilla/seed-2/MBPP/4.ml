let rec heap_queue_largest (nums : int list) (n : int) : int list =
  match nums with
  | [] -> []
  | [_] -> nums
  | _ ->
    let (smallest, rest) = List.partition Utils.is_smallest nums in
    let heap = Heapq.of_list smallest in
    let rec loop (count : int) (result : int list) : int list =
      match count with
      | 0 -> result
      | _ ->
        let (smallest, heap') = Heapq.extract heap in
        loop (count - 1) (smallest :: result)
    in
    let result = loop n [] in
    List.rev_append result (heap_queue_largest rest (n - List.length result))

and Utils.is_smallest x y : bool =
  x < y

let list = [...];
let n = 5;
heap_queue_largest list n;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
