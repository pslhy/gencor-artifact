(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  match nums with
  | [] -> []
  | [_] -> nums
  | _ ->
    let smallest, rest = List.partition (fun x -> x < h) nums in
    let heap = Heapq.of_list smallest in
    let rec loop count result =
      match count, result with
      | 0, _ -> result
      | _, [] -> []
      | _, x :: xs -> loop (count - 1) (x :: xs)
    in
    let result = loop (h - smallest) [] in
    List.rev_append result (heap_queue_largest rest (n - List.length result))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:55: Unbound value "h" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  match nums with
  | [] -> []
  | [_] -> nums
  | _ ->
    let smallest, rest = List.partition (fun x -> x < heap_queue_largest) nums in
    let heap = Heapq.of_list smallest in
    let rec loop count result =
      match count, result with
      | 0, _ -> result
      | _, [] -> []
      | _, x :: xs -> loop (count - 1) (x :: xs)
    in
    let result = loop (n - List.length result) [] in
    List.rev_append result (heap_queue_largest rest (n - List.length result))

