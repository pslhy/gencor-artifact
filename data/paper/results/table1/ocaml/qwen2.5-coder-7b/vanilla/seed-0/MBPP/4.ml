let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec heapify lst i len = 
    let largest = ref i in
    let l = 2 * i + 1 in
    let r = 2 * i + 2 in
    if l < len && List.nth lst l > List.nth lst !largest then largest := l;
    if r < len && List.nth lst r > List.nth lst !largest then largest := r;
    if !largest <> i then 
      let temp = List.nth lst i in
      List.set lst i (List.nth lst !largest);
      List.set lst !largest temp;
      heapify lst !largest len;
    lst in
  let build_heap lst =
    let rec build i len = 
      if i >= 0 then 
        build (i - 1) len;
        heapify lst i len
    in
    build ((len / 2) - 1) (List.length lst)
  in
  let rec extract_max lst n heap =
    if n <= 0 then 
      []
    else begin
      let temp = List.nth lst 0 in
      List.set lst 0 (List.last lst);
      let heap = List.remove_last lst in
      let heap = heapify heap 0 (List.length heap - 1) in
      temp :: (extract_max heap (n - 1) heap)
    end
  in
  let len = List.length nums in
  if n > len then failwith "n is greater than the number of elements in the list";
  let heap = build_heap nums in
  extract_max heap n heap

(* Example usage:
let result = heap_queue_largest [3 1 4 1 5 9 2 6 5 3 5] 3
(* result will be [9 6 5] *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
