
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec heapify_queue (q : int list) (i : int) (n : int) : int list =
    if i < n then
      let l = 2*i + 1 in
      let r = 2*i + 2 in
      let largest = if l < n && List.nth q l > List.nth q i then l else i in
      let largest = if r < n && List.nth q r > List.nth q largest then r else largest in
      if largest != i then
        let q = Queue.of_seq (Array.to_seq q) in
        let temp = Queue.pop q in
        Queue.push (List.nth q largest) q;
        List.of_seq (Queue.to_seq q)
      else q
    else q
  in
  let rec build_queue (q : int list) (n : int) : int list =
    if n > 0 then
      let q = build_queue q (n-1) in
      heapify_queue q (n-1) n
    else q
  in
  let rec n_largest_heap (q : int list) (n : int) : int list =
    if n > 0 then
      let q = Queue.of_seq (Array.to_seq q) in
      Queue.push (List.hd q) q;
      List.of_seq (Queue.to_seq q)
    else q
  in
  if n = 0 then [] else n_largest_heap (build_queue nums (List.length nums)) n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
