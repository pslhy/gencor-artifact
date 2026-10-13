let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec heapify_queue (q : int list) (i : int) (n : int) : int list =
    if i < n then
      let l = 2*i + 1 in
      let r = 2*i + 2 in
      let largest = if l < n && List.nth q l > List.nth q i then l else i in
      let largest = if r < n && List.nth q r > List.nth q largest then r else largest in
      if largest != i then
        let q = Queue.swap q i largest in
        heapify_queue q n n
      else
        q
    else
      q
  in
  let rec build_heap_queue (q : int list) (n : int) : int list =
    let q = List.rev (List.mapi (fun i x -> (i, x)) q) in
    let q = List.map (fun (i, x) -> x) q in
    if n > 1 then
      let q = heapify_queue q 0 n in
      build_heap_queue q (n-1)
    else
      q
  in
  let rec heap_queue_largest (q : int list) (n : int) : int list =
    let q = Queue.swap q 0 (n-1) in
    let q = heapify_queue q 0 (n-1) in
    if n > 1 then
      heap_queue_largest q (n-1)
    else
      q
  in
  let q = build_heap_queue nums (List.length nums) in
  heap_queue_largest q n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
